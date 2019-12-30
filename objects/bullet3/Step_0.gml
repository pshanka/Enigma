// Projectile follows this equation based on launch angle
x += vel*dcos(90-abs(angleBullet));
y += -1*vel*dsin(90-abs(angleBullet));