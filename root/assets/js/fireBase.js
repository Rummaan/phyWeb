var app_fireBase = {};
(function () {
    // Your web app's Firebase configuration
    var firebaseConfig = {
        apiKey: "AIzaSyB_kikyxGlihjwFkLEGASsLZfUfOO-aW-c",
        authDomain: "engineering-physics-website.firebaseapp.com",
        databaseURL: "https://engineering-physics-website.firebaseio.com",
        projectId: "engineering-physics-website",
        storageBucket: "engineering-physics-website.appspot.com",
        messagingSenderId: "942236996114",
        appId: "1:942236996114:web:3e48be1c61439b9ed57ecb",
        measurementId: "G-4STR1MK880",
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
    firebase.analytics();
    app_fireBase = firebase;
})();
