y -= 6; // Move up!

if (y < -20) {
    instance_destroy();
    exit;
}

// Collide with enemy bullets
var bullet = instance_place(x, y, battle_bullet);
if (instance_exists(bullet)) {
    instance_destroy();
    instance_destroy(bullet);
}
