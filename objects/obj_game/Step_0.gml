counter += 1;

if (counter = 90) {
	scr_spawner();
	counter = 0;
	}

if (global.score_value >= high_score) {
	high_score = global.score_value;
}