//When there's no bullet, end the turn.
if(!instance_exists(_inst[0]) && !instance_exists(_inst[1])) Battle_EndTurn();
with (_inst[0]) _move_sine(120,3);
with (_inst[1]) _move_sine(120,3);