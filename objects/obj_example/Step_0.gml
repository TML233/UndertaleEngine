if (timer < 60 * 5) timer++; // increment timer by 1 for 5 seconds

// set the speed of the y animation to timer / 60 (the amount of time passed since starting, capping at 5 seconds)
Anim_SetSpeed(self, "y", timer / 60);