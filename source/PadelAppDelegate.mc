using Toybox.ActivityRecording;
using Toybox.WatchUi;

class PadelAppDelegate extends WatchUi.BehaviorDelegate {

	var relatedView;
	var session = null;          
	

    function initialize(view) {
    	relatedView = view;
        BehaviorDelegate.initialize();
    }
    
    function onPreviousPage() {
    	//relatedView.match.increaseHomeScore();
    	relatedView.match.increaseHomeGames();
        WatchUi.requestUpdate();
    	return true;
    }
    
    function onNextPage() {
    	//relatedView.match.increaseAwayScore();
    	relatedView.match.increaseAwayGames();
        WatchUi.requestUpdate();
    	return true;
    }

    function onMenu() {
    	return true;
    }
    
    function onNextMode() {
    	
    }
    
    function onSelect() {
	   if (Toybox has :ActivityRecording) {                          // check device for activity recording
	       if ((session == null) || (session.isRecording() == false)) {
	           session = ActivityRecording.createSession({          // set up recording session
	                 :name=>"Generic",                              // set session name
	                 :sport=>ActivityRecording.SPORT_TENNIS,       // set sport type
	                 :subSport=>ActivityRecording.SUB_SPORT_MATCH // set sub sport type
	           });
	           session.start();                                     // call start session
	           System.println("Test");
	       }
	       else if ((session != null) && session.isRecording()) {
	           session.stop();                                      // stop the session
	           session.save();                                      // save the session
	           session = null;    
	           System.println("stop");                                  // set session control variable to null
	           
	       }
	   }
	   return true;                                                 // return true for onSelect function
	}

}