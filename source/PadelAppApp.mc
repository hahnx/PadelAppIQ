using Toybox.Application;
using Toybox.WatchUi;

class PadelAppApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
    	var view = new PadelAppView();
    	var delegate = new PadelAppDelegate(view);
        return [ view, delegate ];
    }

}
