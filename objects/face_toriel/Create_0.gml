event_inherited()
/*List of faces
-----------------------------------------------
Idle (blinking)
-----------------------------------------------
0 Blink Happy
1 Blink Neutral
2 Blink Glasses Neutral
3 Blink Mild Concern
-----------------------------------------------
Talking
-----------------------------------------------
4 Talk Joy
5 Talk Happy
6 Talk Neutral
7 Talk Happy Glasses
8 Talk Neutral Glasses
9 Talk Concern
10 Talk Stern
11 Talk Annoyed
-----------------------------------------------
No Mouth
-----------------------------------------------
12 Surprised Blush
13 VERY surpised
14 Thinking
15 WTF
16 WTF side look
17 Unimpressed
18 R U For Real Judge
19 Judgey Pout
20 Judgey Glasses

//blank template for ref
idle_sprite[0]=spr_face_toriel;
idle_image[0]=0;
idle_speed[0]=0;
talk_sprite[0]=spr_face_toriel;
talk_image[0]=#;
talk_speed[0]=0;
*/


//-----------------------------------------------
//Idle (blinking)
//-----------------------------------------------

//0 Blink Happy
idle_sprite[0]=spr_face_toriel_idle_happy;
idle_image[0]=0;
idle_speed[0]=0.3;
talk_sprite[0]=spr_face_toriel_talk_happy;
talk_image[0]=0;
talk_speed[0]=0.5;

//1 Blink Neutral
idle_sprite[1]=spr_face_toriel_idle_neutral;
idle_image[1]=0;
idle_speed[1]=0.3;
talk_sprite[1]=spr_face_toriel_talk_neutral;
talk_image[1]=0;
talk_speed[1]=0.5;

//2 Blink Glasses Neutral
idle_sprite[2]=spr_face_toriel_idle_neutral_glasses;
idle_image[2]=0.3;
idle_speed[2]=0;
talk_sprite[2]=spr_face_toriel_talk_neutral_glasses;
talk_image[2]=0;
talk_speed[2]=0.5;

//3 Blink Mild Concern
idle_sprite[3]=spr_face_toriel_idle_concern;
idle_image[3]=0;
idle_speed[3]=0.3;
talk_sprite[3]=spr_face_toriel_talk_concern;
talk_image[3]=0;
talk_speed[3]=0.5;

//-----------------------------------------------
//Talking (No Blinking)
//-----------------------------------------------

//4 Talk Joy
idle_sprite[4]=spr_face_toriel_talk_joyed;
idle_image[4]=0;
idle_speed[4]=0;
talk_sprite[4]=spr_face_toriel_talk_joyed;
talk_image[4]=1;
talk_speed[4]=0.5;

//5 Talk Happy
idle_sprite[5]=spr_face_toriel_talk_happy;
idle_image[5]=0;
idle_speed[5]=0;
talk_sprite[5]=spr_face_toriel_talk_happy;
talk_image[5]=1;
talk_speed[5]=0.5;

//6 Talk Neutral
idle_sprite[6]=spr_face_toriel_talk_neutral;
idle_image[6]=0;
idle_speed[6]=0;
talk_sprite[6]=spr_face_toriel_talk_neutral;
talk_image[6]=1;
talk_speed[6]=0.5;


//7 Talk Happy Glasses
idle_sprite[7]=spr_face_toriel_talk_neutral_glasses;
idle_image[7]=0;
idle_speed[7]=0;
talk_sprite[7]=spr_face_toriel_talk_neutral_glasses;
talk_image[7]=1;
talk_speed[7]=0.5;


//8 Talk Neutral Glasses
idle_sprite[8]=spr_face_toriel_talk_neutral_glasses;
idle_image[8]=0;
idle_speed[8]=0;
talk_sprite[8]=spr_face_toriel_talk_neutral_glasses;
talk_image[8]=1;
talk_speed[8]=0.5;


//9 Talk Concern
idle_sprite[9]=spr_face_toriel_talk_concern;
idle_image[9]=0;
idle_speed[9]=0;
talk_sprite[9]=spr_face_toriel_talk_concern;
talk_image[9]=1;
talk_speed[9]=0.5;

//10 Talk Stern
idle_sprite[10]=spr_face_toriel_talk_stern;
idle_image[10]=0;
idle_speed[10]=0;
talk_sprite[10]=spr_face_toriel_talk_stern;
talk_image[10]=1;
talk_speed[10]=0.5;

//11 Talk Annoyed
idle_sprite[11]=spr_face_toriel_talk_annoyed;
idle_image[11]=0;
idle_speed[11]=0;
talk_sprite[11]=spr_face_toriel_talk_annoyed;
talk_image[11]=1;
talk_speed[11]=0.5;

//-----------------------------------------------
//No Mouth
//-----------------------------------------------

//12 Surprised Blush
idle_sprite[12]=0;
idle_image[12]=0;
idle_speed[12]=0;
talk_sprite[12]=0;
talk_image[12]=0;
talk_speed[12]=0;

//13 VERY surpised
idle_sprite[13]=1;
idle_image[13]=0;
idle_speed[13]=0;
talk_sprite[13]=1;
talk_image[13]=0;
talk_speed[13]=0;


//14 Thinking
idle_sprite[14]=2;
idle_image[14]=0;
idle_speed[14]=0;
talk_sprite[14]=2;
talk_image[14]=0;
talk_speed[14]=0;

//15 WTF
idle_sprite[15]=3;
idle_image[15]=0;
idle_speed[15]=0;
talk_sprite[15]=3;
talk_image[15]=0;
talk_speed[15]=0;

//16 WTF side look
idle_sprite[16]=4;
idle_image[16]=0;
idle_speed[16]=0;
talk_sprite[16]=4;
talk_image[16]=0;
talk_speed[16]=0;

//17 Unimpressed
idle_sprite[17]=5;
idle_image[17]=0;
idle_speed[17]=0;
talk_sprite[17]=5;
talk_image[17]=0;
talk_speed[17]=0;

//18 R U For Real Judge
idle_sprite[18]=6;
idle_image[18]=0;
idle_speed[18]=0;
talk_sprite[18]=6;
talk_image[18]=0;
talk_speed[18]=0;

//19 Judgey Pout
idle_sprite[19]=7;
idle_image[19]=0;
idle_speed[19]=0;
talk_sprite[19]=7;
talk_image[19]=0;
talk_speed[19]=0;

//20 Judgey Glasses
idle_sprite[20]=8;
idle_image[20]=0;
idle_speed[20]=0;
talk_sprite[20]=8;
talk_image[20]=0;
talk_speed[20]=0;