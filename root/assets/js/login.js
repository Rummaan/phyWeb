(function () {
    var ui = new firebaseui.auth.AuthUI(firebase.auth());
    var uiConfig = {
        callbacks: {
            signInSuccessWithAuthResult: function (authResult, redirectUrl) {
                return true;
            },
            uiShown: function () {
                document.getElementById("loader").style.display = "none";
            },
        },
        signInFlow: "redirect",
        signInSuccessUrl: "login2.html",
        signInOptions: [
            {
                provider: firebase.auth.PhoneAuthProvider.PROVIDER_ID,
                recaptchaParameters: {
                    type: "image",
                    size: "normal",
                    badge: "bottomleft",
                },
                defaultCountry: "IN",

                defaultNationalNumber: "",
                loginHint: "",
            },
        ],
        tosUrl: "index.html",
        privacyPolicyUrl: "index.html",
    };
    ui.start("#firebaseui-auth-container", uiConfig);
})();
