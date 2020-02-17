class Score {

	var points, games, sets;
	
	function initialize() {
        points = 0;
        games = 0;
        sets = 0;
        
    }
    
    function setScore(score) {
        points = score.points;
        games = score.games;
        sets = score.sets;
    }
    
    
    function increaseScore(otherScore) {
    
    	switch (points) {
    	
    		case 0:
    			points = 15;
    			break;
    			
    		case 15:
    			points = 30;
    			break;
    		
    		case 30:
    			points = 40;
    			break;
    			
    		case 40:
    			if (otherScore.points < 40) {
    				increaseGames(otherScore);
    			} else if (otherScore.points == 40) {
    				points = 45;
    			} else if (otherScore.points == 45) {
    				points = 40;
    				otherScore.points=40;
    			}
    			break;
    			
    		case 45:
    			increaseGames(otherScore);
    	}
    	
    }
    
    function increaseGames(otherScore) {
    
	    points = 0;
    	otherScore.points = 0;			
    
    	switch (games) {
    	
    		case 5:
    			if (otherScore.games < 5) {
    				increaseSets(otherScore);
    			} else {
    				games++;
    			}
    			break;
    		
    		case 6:
    			increaseSets(otherScore);
    			break;
    			 
    		default:
    			games++;
    			break; 
    	}
    
    }
    
    function increaseSets(otherScore) {
    	
    	games = 0;
    	otherScore.games = 0;			
    	sets++;
    	
    }
    
    function getPoints() {
    
    	if (points == 45) {
    		return "A";
    	} else {
    		return points.toString();		
    	}	
    
    }
    
    function getGames() {
    
    	return games.toString();
    
    }
    
    function getSets() {
    
    	return sets.toString();
    
    }
    

}