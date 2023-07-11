// power up 
if (obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
	
}

// play rock destroying sound
audio_play_sound(snd_rockdestroy, 0, false);

// destroy bullet
instance_destroy(other); 

// explosion effect
effect_create_above(ef_explosion, x, y, 1, c_white); 

// if the rock is big, by checking its sprite
if (is_big)
{
		var _small_rock1 = instance_create_layer(x, y, "Instances", obj_rock);
        var _small_rock2 = instance_create_layer(x, y, "Instances", obj_rock);
        _small_rock1.sprite_index = choose(spr_meteor_brown_med1,spr_meteor_brown_med2);
		_small_rock2.sprite_index = choose(spr_meteor_brown_med1, spr_meteor_brown_med2);
		_small_rock1.is_big = false;
		_small_rock2.is_big = false;
        is_big = false;
		instance_destroy();
		
		
}

// rock is small & rock num is less than 12
else if instance_number(obj_rock) < 12
{
        sprite_index = choose(spr_meteor_brown_big1,spr_meteor_brown_big2,spr_meteor_brown_big3,spr_meteor_brown_big4);
        is_big = true;
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.points += 50;