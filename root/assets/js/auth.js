var mainApp = {};
(function () {
    var firebase = app_fireBase;
    var uid = null;
    var name = null;
    firebase.auth().onAuthStateChanged(function (user) {
        if (user) {
            // User is signed in.
            uid = user.uid;
            name = user.providerData[0].displayName;
        } else {
            // redirect to login
            uid = null;
            window.location.replace("index.html");
            alert("Please Sign in or Sign up");
        }
    });
    console.log(name);
    console.log(uid);
    function logOut() {
        firebase.auth().signOut();
    }
    mainApp.logOut = logOut;
})();
