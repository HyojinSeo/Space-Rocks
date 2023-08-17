// invisible power-up
if (powerup == 2) exit;

// firework effect
effect_create_above(ef_firework, x, y, 1, c_white);

// destroy player isntance
instance_destroy();

// Setting Alarm 0 in obj_game to 120
obj_game.alarm[0] = 120;

// play lose sound
audio_play_sound(snd_lose, 0, false)