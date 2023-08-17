// vk = virtual key
// image_angle which is where the ship is facing

var _move_speed = 0.5

// move up and down and stop when neither up nor down
if keyboard_check(vk_up)
{
    motion_add(image_angle, _move_speed);    
}
else if keyboard_check(vk_down)
{
    motion_add(image_angle, -_move_speed);
}
else
{
    motion_set(0, 0);
}

// move left
if keyboard_check(vk_left)
{
	image_angle += 4;	
}
// move right
if keyboard_check(vk_right)
{
	image_angle -= 4;
}

// Wrap
move_wrap(true, true, 0); 


// when spacebar is pressed
// Create instances of obj_bullet
if keyboard_check_pressed(vk_space)  
{
    instance_create_layer(x, y, "Instances", obj_bullet);
	// index, priority, loop, gain, offset, pitch, listener_mask
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8,1.2));
	
	// Spread power-up
	if (powerup == 1)
	{
		// Create new instance and store it's reference in local var, _bullet
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
}