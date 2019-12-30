/// @description Insert description here
// You can write your code in this editor
globalvar dir; // dir represents which direction the cannon rotates in
dir = -1;

globalvar shootCoolDown; // Uses cooldown between projectiles
shootCoolDown = 0;

globalvar shootLevel; // Game level
shootLevel = 1;
instance_create_layer(800,200,layer,obj_target); // Creates target object for player to hit