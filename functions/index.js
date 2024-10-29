const {onValueWritten} = require("firebase-functions/v2/database");
const admin = require("firebase-admin");
// const logger = require("firebase-functions/logger");
admin.initializeApp();

exports.updateCount = onValueWritten(
    {
      ref: "claps/{uid}/{targetId}/count",
      instance: "furen-button-default-rtdb",
      region: "asia-southeast1",
    },
    async (event) => {
      const targetId = event.params.targetId;
      const MAX_UP_VALUE = 10000;
      const countUp = async (upValue) => {
        const nowData = await admin.database().ref(`counts/${targetId}/count`).get();
        if (!nowData.exists()) {
          await admin.database().ref(`counts/${targetId}/count`).set(upValue);
        } else {
          const nowValue = nowData.val();
          const newCount = nowValue + upValue;
          await admin.database().ref(`counts/${targetId}/count`).set(newCount);
        }
      };
      const afterValue = event.data.after.val();
      if (MAX_UP_VALUE < afterValue) {
        /* empty */
      } else if (event.data.before.exists()) {
        const beforeValue = event.data.before.val();
        if (beforeValue === afterValue) {
          return;
        }
        const diff = afterValue - beforeValue;
        await countUp(Math.max(1, diff));
      } else {
        await countUp(Math.max(1, afterValue));
      }
    },
);
