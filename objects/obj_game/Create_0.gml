counter = 0;
global.score_value = 0;
high_score = 0;

file = "save.ini";
ini_open(file);
high_score = ini_read_real("Section","Key",0);
ini_close();