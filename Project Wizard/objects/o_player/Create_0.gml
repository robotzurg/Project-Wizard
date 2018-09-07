/// @description Initialize player variables
//Movement/Collision Variables
gravity_ = 0.5;
velocity_ = [0, 0]; //Don't change this
max_velocity_ = [6, 11]; //1st value is the x, 2nd is the y
jump_speed_ = 10;
acceleration_ = 1.5;
sprinting = false; 
is_jumping = false;
old_spd_inc = global.spd_inc;
global.focus = self;
state = "none";


var layer_id = layer_get_id("Tiles_Main");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

//Animation Variables
anim_state = "idle";
flipped = 1
image_speed = 0.8
flicker = 1;
start = false;

//Combat Variables
eqweapon = "none"
do_reload = true;
reloadtime = 0
dmg_mod = 0
global.invincible = false;

//Health/Mana Variables
global.CurrentHP = 10;
global.MaxHP = 10;
global.CurrentMana = 50 
global.MaxMana = 50

//Inventory Variables
globalvar pasinv;
pasinv = ds_grid_create(6,0);
globalvar actinv;
actinv = ds_grid_create(4,1);
globalvar spellinv;
spellinv = ds_grid_create(6,0);
globalvar wepinv;
wepinv = ds_grid_create(7,2);
wepequipped = "none"
actequipped = "none"

cooldown[1] = 1;
cooldown[2] = 1;
cooldown[3] = 1;
cooldown[4] = 1;
spellequipamount = ds_grid_height(spellinv);

//Key Mappings
keyboard_set_map(ord("A"),vk_left)
keyboard_set_map(ord("D"),vk_right)