class Match {

	var homeScore, awayScore;
	
	function initialize() {
		homeScore = new Score();
		awayScore = new Score();
	}
	
	function increaseHomeScore() {
		homeScore.increaseScore(awayScore);
	}
	
	function increaseAwayScore() {
		awayScore.increaseScore(homeScore);
	}
	
	function increaseHomeGames() {
		homeScore.increaseGames(awayScore);
	}
	
	function increaseAwayGames() {
		awayScore.increaseGames(homeScore);
	}
	
	function increaseHomeSet() {
		homeScore.increaseSets(awayScore);
	}
	
	function increaseAwaySet() {
		awayScore.increaseSets(homeScore);
	}
	
}