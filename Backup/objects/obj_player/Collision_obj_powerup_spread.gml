// 1. Activate power-up
powerup = 1;

// 2. Set alarm to deactivate after 10s
alarm[0] = 10*60; // 60 frame in 1 sec
image_blend = c_yellow;

// 3. Destroy the power-up
instance_destroy(other);