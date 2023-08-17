// Inherit the parent event
event_inherited();

// show help text
if (instance_exists(obj_control))
{
	instance_destroy(obj_control);	
}

else
{
	instance_create_layer(room_width/2,room_height-100,"Instances",obj_control);
}