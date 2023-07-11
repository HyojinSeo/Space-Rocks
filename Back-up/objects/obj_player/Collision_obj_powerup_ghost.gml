// 1. Activate power-up
powerup = 2;

// 2. Set alarm to deactivate after 10s
alarm[0] = 10*60; // 60 frame in 1 sec
image_blend = c_white;
image_alpha = 0.4;

// 3. Destroy the power-up
instance_destroy(other);