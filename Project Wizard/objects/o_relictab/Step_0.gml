if o_Inventory.current_tab != "Relic" {
	image_index = 0;
} else {
	image_index = 1;
}
var _x1 = view_x;
var _y1 = view_y;
x = _x1+215
y = _y1+508

if global.inv_open = false { instance_destroy(); }