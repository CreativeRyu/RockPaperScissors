/// @description Global Tap Button Parent

var gui_mouse_x, gui_mouse_y;
gui_mouse_x = event_data[? "guiposX"];
gui_mouse_y = event_data[? "guiposY"];

if(position_meeting(gui_mouse_x, gui_mouse_y, id)) {
	interact();
}