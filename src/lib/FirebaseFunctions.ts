import {FirebaseApp, initializeApp} from 'firebase/app';
import {Auth, getAuth, signInAnonymously} from 'firebase/auth';
import {getDatabase, ref, onValue, set} from 'firebase/database';
import {getAnalytics} from 'firebase/analytics';
import {initializeAppCheck, AppCheckOptions, ReCaptchaEnterpriseProvider} from 'firebase/app-check';
const apiKey = import.meta.env.VITE_FIREBASE_API_KEY || '';
const siteKey = import.meta.env.VITE_RECAPTCHA_SITE_KEY || '';

const firebaseConfig = {
  apiKey: apiKey,
  authDomain: 'furen-button.firebaseapp.com',
  databaseURL: 'https://furen-button-default-rtdb.asia-southeast1.firebasedatabase.app',
  projectId: 'furen-button',
  storageBucket: 'furen-button.appspot.com',
  messagingSenderId: '58854415568',
  appId: '1:58854415568:web:0b6925f559f4b9b59712d5',
  measurementId: 'G-HBG03F74B0'
};

const firebaseAppCheckConfig : AppCheckOptions = {
  provider: new ReCaptchaEnterpriseProvider(siteKey),
  isTokenAutoRefreshEnabled: true
};

let app : FirebaseApp | null = null;
let auth : Auth | null = null;

export interface ClapData {
    userClaps: {
        [targetId: string]: number;
    },
    allClaps: {
        [targetId: string]: number;
    }
}

export const NullClapData : ClapData = {
  userClaps: {},
  allClaps: {},
};

async function login() {
  if (apiKey === '') {
    return;
  }
  app = initializeApp(firebaseConfig);
  initializeAppCheck(app, firebaseAppCheckConfig);
  auth = getAuth(app);
  getAnalytics(app);
  await signInAnonymously(auth);
}

async function getClapData(setUserClaps : (userClaps : {[targetId: string]: number}) => void,
  setAllClaps : (allClaps : {[targetId: string]: number}) => void) {
  if (app === null) {
    return;
  }
  if (auth === null) {
    return;
  }
  if (auth.currentUser === null) {
    return;
  }
  const database = getDatabase(app);
  const userClapRef = ref(database, `claps/${auth.currentUser.uid}`);
  onValue(userClapRef, (clapSnapshot) => {
    const clapData = clapSnapshot.val() as {[targetId: string]: {count: number}};
    const userClaps : {[targetId: string]: number} = {};
    if (clapData !== null) {
      for (const targetId in clapData) {
        userClaps[targetId] = clapData[targetId].count;
      }
    }
    setUserClaps(userClaps);
  });

  const allClapRef = ref(database, 'counts');
  onValue(allClapRef, (clapSnapshot) => {
    const clapData = clapSnapshot.val() as {[targetId: string]: {count: number}};
    const allClaps : {[targetId: string]: number} = {};
    if (clapData !== null) {
      for (const targetId in clapData) {
        allClaps[targetId] = clapData[targetId].count;
      }
    }
    setAllClaps(allClaps);
  });
}

async function updateClap(targetId : string, clapCount : number) {
  if (app === null) {
    return;
  }
  if (auth === null) {
    return;
  }
  if (auth.currentUser === null) {
    return;
  }
  const userId = auth.currentUser.uid;
  const database = getDatabase(app);
  const clapRef = ref(database, `claps/${userId}/${targetId}`);
  await set(clapRef, {
    count: clapCount,
  });
}

function soundFileNameToTargetId(soundFileName : string) {
  return soundFileName.replace('.mp3', '').replace('/', '_');
}

export { login, getClapData, updateClap, soundFileNameToTargetId };
