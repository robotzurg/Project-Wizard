if (live_call()) return live_result;
draw_set_color(c_black)
draw_set_alpha(0.8)
if global.inv_open = true {
	var _x1 = view_x;
	var _y1 = view_y;
	var _x2 = view_x + view_w;
	var _y2 = view_y + view_h;
	draw_rectangle_color(_x1,_y1,_x2,_y2,c_black,c_black,c_black,c_black,false);
	if tab_fin = false {
		instance_create_layer(_x1+75,_y1+508,"Inv_Instances",o_runetab);
		instance_create_layer(_x1+215,_y1+508,"Inv_Instances",o_relictab);
		instance_create_layer(_x1+355,_y1+508,"Inv_Instances",o_spelltab);
		instance_create_layer(_x1+495,_y1+508,"Inv_Instances",o_weptab);
		tab_fin = true;
	}
	o_player.image_speed = 0;
}
draw_set_alpha(1);
draw_set_color(c_white)

if global.inv_open = false {
	o_player.image_speed = 0.8
	tab_fin = false;
	exit;
}