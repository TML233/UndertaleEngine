///@arg lang_id
///@arg default*
function Lang_GetName(ID,DEF="") {
	return (Lang_IsExists(ID) ? ds_list_find_value(global._gmu_lang_list,ID) : DEF);
}
