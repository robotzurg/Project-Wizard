if (live_call()) return live_result;
if global.inv_open = false {
	instance_destroy();
}

mouse_gui_x = device_mouse_x_to_gui(0);
mouse_gui_y = device_mouse_y_to_gui(0);

if my_type != o_Inventory.current_tab {
	o_Inventory.obj_selected = false;
	instance_destroy();
}

if point_in_rectangle(mouse_gui_x,mouse_gui_y,x-25,y-25,x+25,y+25) {
	if my_type = "Spell" {
		if (mouse_check_button(mb_left) && global.up_pos[my_pos] < 4) {
			if fill_amt >= 25 {
				global.up_pos[my_pos] += 1;
				fill_amt = 0;
				fill = false;
			} else {
				fill = true;
			}
		} else {
			fill = false;
		}
	}
} else {
	fill = false;
}

if fill = true {
	if fill_amt < 25 {
		fill_amt += 0.3;
	}
} else {
	if fill_amt > 0 && global.up_pos[my_pos] < 4 {
	fill_amt -= 0.5;
	}
}

if global.up_pos[my_pos] = 4 {
	fill_amt = 24;
}