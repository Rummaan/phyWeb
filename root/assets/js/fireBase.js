var app_fireBase = {};
(function() {
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAZ3Ato_PmmG7mmFo9OCq2fcoPFnHUno1E",
    authDomain: "physics-website.firebaseapp.com",
    databaseURL: "https://physics-website.firebaseio.com",
    projectId: "physics-website",
    storageBucket: "physics-website.appspot.com",
    messagingSenderId: "840358069215",
    appId: "1:840358069215:web:eca843657e51004a65ba6a",
    measurementId: "G-1PYFD30GXW"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  app_fireBase = firebase;
})();
