///@description Initialization
randomize();
draw_set_font(fnt_main)

///Initialize variables

//Menu Variables
global.inv_open = false;
global.pause = false;

//Key Input Variables
global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left	= ord("A");
global.key_right = ord("D");
global.key_up = ord("W");
global.key_down = ord("S");

//Game Variables
global.runefragments = 0;
global.spd_inc = 0; //How much the speed has been increased by.

//MasterGame Specific Variables
show_help = true;
playerx = o_player.x
playery = o_player.y

/* ITEM INITIALIZING */

//GRID INIT
globalvar passive;
passive = ds_grid_create(10,10);

globalvar active;
active = ds_grid_create(10,10);

globalvar spell;
spell = ds_grid_create(10,10);

globalvar weapon;
weapon = ds_grid_create(10,10);

//PASSIVES
item_init_passive(0,"Glowy",s_PGlowy,"Increases attack by 1.",1,pastype.relic)
item_init_passive(1,"Maze",s_PMaze,"Increases attack by 2.",2,pastype.rune)

//ACTIVES
item_init_active(0,"Triangle",s_ATriangle,"Nothing yet.",1)
item_init_active(1,"Square",s_ASquare,"Nothing yet.",2)

//SPELLS
item_init_spell(0,"Glyph",s_SGlyph,"Nothing yet.",1)
item_init_spell(1,"Heiro",s_SHeiro,"Nothing yet.",2)

//WEAPONS
item_init_weapon(weaponid.icewand,"Ice Wand",s_IceWand,"A wand that shoots ice projectiles.",weptype.wand,1,15)
item_init_weapon(weaponid.firewand,"Fire Wand",s_FireWand,"A wand that shoots fire projectiles.",weptype.wand,3,25)
item_init_weapon(weaponid.grasswand,"Grass Wand",s_GrassWand,"A wand that shoots grass projectiles.",weptype.wand,5,5)

//Spawn some starting items
MasterItem_Create(passiveid.glowy,"Passive",650,350)
MasterItem_Create(passiveid.maze,"Passive",725,350)
MasterItem_Create(activeid.triangle,"Active",800,350)
MasterItem_Create(activeid.square,"Active",875,350)
MasterItem_Create(spellid.heiro,"Spell",950,350)
MasterItem_Create(spellid.glyph,"Spell",1025,350)
MasterItem_Create(weaponid.icewand,"Weapon",1100,350)
MasterItem_Create(weaponid.firewand,"Weapon",1175,350)
MasterItem_Create(weaponid.grasswand,"Weapon",1250,350)
MasterItem_Create(spellid.glyph,"Spell",1325,350)










