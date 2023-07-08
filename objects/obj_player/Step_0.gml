// vk = virtual key
// image_angle which is where the ship is facing

var _move_speed = 0.5

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
    motion_set(0, 0); // Stop the motion when neither up nor down key is pressed
}

if keyboard_check(vk_left)				// move left
{
	image_angle += 4;	
}

if keyboard_check(vk_right)				// moce right
{
	image_angle -= 4;
}

move_wrap(true, true, 0)				// wrap 

// when left mouse is clicked
// Create instances of obj_bullet
if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}

// when spacebar is pressed
// Create instances of obj_bullet
/*
if keyboard_check_pressed(vk_space)  
{
    instance_create_layer(x, y, "Instances", obj_bullet);
}
*/