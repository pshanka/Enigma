if(gamePaused == 0) {
if (keyboard_check_pressed(vk_up))
    {
    instance_create_layer(mouse_x, mouse_y, layer, objcircle);
    alarm[0] = 5;
    }
}