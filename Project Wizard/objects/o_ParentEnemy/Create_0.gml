gravity_ = 0.5;
velocity_ = [0, 0]; //Don't change this
max_velocity_ = [7, 5]; //1st value is the x, 2nd is the y
jump_speed_ = 9;
acceleration_ = 1.5;
jump = false;
stop = false;
move = 0;
is_jumping = false;
flipped = 1;
state = "idle";
anim_state = "idle";

var layer_id = layer_get_id("Tiles_Main");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

EnemyHealth = 10;
EnemyMaxHealth = 10;