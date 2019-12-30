
if (shootCoolDown <= 0) // Ensures projectiles are not fired in quick succession
{
	if (angleShootingGame > -10) // Ensures projectile comes out of cannon head for angles less than 10 deg
	{
		instance_create_layer(obj_cannon_screw.x - 10,obj_cannon_screw.y - 50*dcos(90-abs(angleShootingGame)),layer,bullet3);
		shootCoolDown = 50;
	}

	else // Ensures projectile comes out of cannon head for angles closer to the horizontal
	{
		instance_create_layer(obj_cannon_screw.x - 50*dsin(90-abs(angleShootingGame)),obj_cannon_screw.y - 50*dcos(90-abs(angleShootingGame)),layer,bullet3);
		shootCoolDown = 50;
	}
}