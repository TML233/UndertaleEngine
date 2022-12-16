///@desc Turn End

var DIALOG=array_create(3,"");
DIALOG[0]="* The battlefield is filled&  with the smell of mustard&  seed.";
DIALOG[1]="* Do robots dream of electric&  sex?";
DIALOG[2]="* I hate programmming this.";
Battle_SetMenuDialog(DIALOG[random(3)]);
