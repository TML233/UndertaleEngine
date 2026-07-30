var proceed = true;
if (color == 1) { // Cyan
    if (!battle_soul._moving) proceed = false;
} else if (color == 2) { // Orange
    if (battle_soul._moving) proceed = false;
}

if (proceed) {
    Battle_CallSoulEventHurt();
}