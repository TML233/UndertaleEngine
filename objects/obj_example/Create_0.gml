timer = 0; // a frame counter

// an animation that will loop and reverse when it's about to end.
Anim_Create(self, "x", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, x, 200, 60, 0, 0, 0, ANIM_MODE.PINGPONG)

// an animation that will repeat itself once done.
Anim_Create(self, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, y, 200, 25, 0, 0, 0, ANIM_MODE.REPEAT)

// an animation that will only play once.
Anim_Create(self, "image_alpha", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 0, 1, 60, 0, 0, 0, ANIM_MODE.ONESHOT)