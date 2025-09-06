import {FirebaseApp, initializeApp, FirebaseOptions} from 'firebase/app';
import {Auth, getAuth, signInAnonymously} from 'firebase/auth';
import {getDatabase, ref, onValue, set} from 'firebase/database';
import {getAnalytics} from 'firebase/analytics';
import {initializeAppCheck, AppCheckOptions, ReCaptchaEnterpriseProvider} from 'firebase/app-check';
import {SoundData, SoundDataJson} from '../components/SoundData.tsx';
const apiKey = import.meta.env.VITE_FIREBASE_API_KEY || '';

const firebaseConfig : FirebaseOptions = {
  apiKey: apiKey,
  authDomain: import.meta.env.VITE_FIREBASE_AUTH_DOMAIN,
  databaseURL: import.meta.env.VITE_FIREBASE_DATABASE_URL,
  projectId: import.meta.env.VITE_FIREBASE_PROJECT_ID,
  storageBucket: import.meta.env.VITE_FIREBASE_STORAGE_BUCKET,
  messagingSenderId: import.meta.env.VITE_FIREBASE_MESSAGING_SENDER_ID,
  appId: import.meta.env.VITE_FIREBASE_APP_ID,
  measurementId: import.meta.env.VITE_FIREBASE_MEASUREMENT_ID,
};

const firebaseAppCheckConfig : AppCheckOptions = {
  provider: new ReCaptchaEnterpriseProvider(import.meta.env.VITE_RECAPTCHA_SITE_KEY),
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
  if (import.meta.env.DEV) {
     
    // @ts-expect-error
    self.FIREBASE_APPCHECK_DEBUG_TOKEN = true;
  }
  initializeAppCheck(app, firebaseAppCheckConfig);
  auth = getAuth(app);
  getAnalytics(app);
  await signInAnonymously(auth);
}

async function getClapData(updateUserClap : (targetId: string, count: number) => void,
  updateAllClap : (targetId: string, count: number) => void) {
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

  const soundData = SoundDataJson as SoundData[];
  const targetIds = soundData.map((soundData) => soundFileNameToTargetId(soundData.fileName));

  for (const targetId of targetIds) {
    const userClapRef = ref(database, `claps/${auth.currentUser.uid}/${targetId}`);
    onValue(userClapRef, (clapSnapshot) => {
      const clapData = clapSnapshot.val() as {count: number};
      if (clapData === null) {
        updateUserClap(targetId, 0);
      } else {
        updateUserClap(targetId, clapData.count);
      }
    });
    const allClapRef = ref(database, `counts/${targetId}`);
    onValue(allClapRef, (clapSnapshot) => {
      const clapData = clapSnapshot.val() as {count: number};
      if (clapData === null) {
        updateAllClap(targetId, 0);
      } else {
        updateAllClap(targetId, clapData.count);
      }
    });
  }
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
