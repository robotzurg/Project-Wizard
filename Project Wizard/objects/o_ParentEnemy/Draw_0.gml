/// @description debug
draw_set_halign(fa_center)
draw_text(x,y-30,string(EnemyHealth) + "/" + string(EnemyMaxHealth))
draw_text(x,y-45,string(state))
draw_text(x,y-60,string(alarm[5]));
draw_set_halign(fa_left)

draw_sprite_ext(sprite_index, image_index, x, y, flipped, 1, 0, image_blend, 1)