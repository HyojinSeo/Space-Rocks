// destroy bullet
instance_destroy(other); 

// explosion effect
effect_create_above(ef_explosion, x, y, 1, c_white); 

// rock eventually becomes a small rock, or respawns,
//it will move in a new direction
direction = random(360);

// if the rock is big, by checking its sprite
if sprite_index == spr_rock_big
{
        sprite_index = spr_rock_small;
        instance_copy(true);
}

// rock is small & rock num is less than 12
else if instance_number(obj_rock) < 12
{
        sprite_index = spr_rock_big;
        x = -100;
}
else
{
        instance_destroy();
}

// increment point
obj_game.points += 50;
