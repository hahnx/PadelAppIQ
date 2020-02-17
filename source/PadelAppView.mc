using Toybox.WatchUi;

class PadelAppView extends WatchUi.View {

	var match;

    function initialize() {
    	match = new Match();
    	
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.SetLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.findDrawableById("homeSets").setText(match.homeScore.getSets());
        View.findDrawableById("awaySets").setText(match.awayScore.getSets());
        
        View.findDrawableById("homeGames").setText(match.homeScore.getGames());
        View.findDrawableById("awayGames").setText(match.awayScore.getGames());
        
        //View.findDrawableById("homePoints").setText(match.homeScore.getPoints());
        //View.findDrawableById("awayPoints").setText(match.awayScore.getPoints());
        
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}