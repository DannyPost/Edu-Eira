const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("Userinformation/" + user.uid);
  await firestore.collection("Userinformation").doc(user.uid).delete();
});
