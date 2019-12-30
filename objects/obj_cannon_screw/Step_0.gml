/// @description goes to the right degree
image_angle = angleShootingGame; // Angle that cannon is oriented
angleShootingGame += dir; // Angle changes at each step

// If cannon is horizontal, cannon changes direction and rotates left
if (angleShootingGame <= -90) 
{
	dir = 1;
}

// If cannon is horizontal, cannon changes direction and rotates right
if (angleShootingGame >= 0)
{
	dir = -1;
}


shootCoolDown -= 1;

// In level 1, plays beep at 80 deg angle
if (shootLevel == 1){
	if (angleShootingGame == -80)
	{
		audio_play_sound(Beep,0,0);
	}
}

// In level 2, plays beep at 30 deg angle
if (shootLevel == 2){
	if (!instance_exists(obj_target))
	{
		instance_create_layer(220,128,layer,obj_target);
	}
	if (angleShootingGame == -30)
	{
		audio_play_sound(Beep,0,0);
	}
}

// In level 3, plays beep at 70 deg angle
if (shootLevel == 3){
	if (!instance_exists(obj_target))
	{
		instance_create_layer(860,105,layer,obj_target);
	}
	if (angleShootingGame == -70)
	{
		audio_play_sound(Beep,0,0);
	}
}

//if shootlevel 4, go to the clue intro room
if(shootLevel == 4) {
room_goto(cannonblasterclueintroroom);
}