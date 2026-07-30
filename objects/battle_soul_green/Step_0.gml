event_inherited();

x = battle_board.x;
y = battle_board.y;

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable) {
    if (Input_IsPressed(INPUT.UP)) {
        _dir = 90;
    } else if (Input_IsPressed(INPUT.DOWN)) {
        _dir = 270;
    } else if (Input_IsPressed(INPUT.LEFT)) {
        _dir = 180;
    } else if (Input_IsPressed(INPUT.RIGHT)) {
        _dir = 0;
    }
}
