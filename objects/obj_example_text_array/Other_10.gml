/// @desc Array Examples

//prefix uses a #macro from flag_custom,
//used for setting up character information


//Write it like this
text = []
text[0] = "A"
text[1] = "B"

//Or like this

text = ["A", "B"]

//use the function Dialog_Add_Array



Dialog_Add_Array(["* Lmao", "* some cringe text idk", "* foo", "* bar"])

Dialog_Add_Array([
"* Lmao",

"* XD",

"What"])

Dialog_Add_Array(text,FL)

//if you want add single texts one at a time

text = "* BANANAS!"
text2 = "{pause}{clear}* BANANAS HELL YEAH!!"
Dialog_Add(text+text2,FL)