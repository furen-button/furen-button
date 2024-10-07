import {FirebaseApp, initializeApp} from 'firebase/app';
import {Auth, getAuth, signInAnonymously} from 'firebase/auth';
import {get, getDatabase, ref, set} from 'firebase/database';

const firebaseConfig = {
  apiKey: 'AIzaSyA9Lsj7FTia1FLxlFxqx5h55dN293Kqick',
  databaseURL: 'https://furen-button-default-rtdb.asia-southeast1.firebasedatabase.app',
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
  app = initializeApp(firebaseConfig);
  auth = getAuth(app);
  await signInAnonymously(auth);
}

async function getClapData() : Promise<ClapData> {
  if (app === null) {
    return NullClapData;
  }
  if (auth === null) {
    return NullClapData;
  }
  if (auth.currentUser === null) {
    return NullClapData;
  }
  const database = getDatabase(app);
  const userClapRef = ref(database, `claps/${auth.currentUser.uid}`);
  const clapSnapshot = await get(userClapRef);
  const clapData = clapSnapshot.val() as {[targetId: string]: {count: number}};
  const userClaps : {[targetId: string]: number} = {};
  if (clapData !== null) {
    for (const targetId in clapData) {
      userClaps[targetId] = clapData[targetId].count;
    }
  }
  const allClapRef = ref(database, 'counts');
  const allClapSnapshot = await get(allClapRef);
  const allClapData = allClapSnapshot.val() as {[targetId: string]: {count: number}};
  const allClaps : {[targetId: string]: number} = {};
  if (allClapData !== null) {
    for (const targetId in allClapData) {
      allClaps[targetId] = allClapData[targetId].count;
    }
  }

  return {
    userClaps,
    allClaps,
  };
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
