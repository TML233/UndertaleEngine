function Anim_Init() {
	//GMU_Anim v3.0.0

	global._gmu_anim_list=ds_list_create();
	global._gmu_anim_data=ds_map_create();
	global._gmu_anim_id=-10;

	enum ANIM_TWEEN{
		LINEAR,
		SINE,
		QUAD,
		CUBIC,
		QUART,
		QUINT,
		EXPO,
		CIRC,
		BACK,
		ELASTIC,
		BOUNCE
	};

	enum ANIM_EASE{
		IN,
		OUT,
		IN_OUT
	};

	enum ANIM_DATA{
		TARGET,
		VAR_NAME,
		TWEEN,
		EASE,
		START,
		CHANGE,
		DURATION,
		DELAY,
		ARG_0,
		ARG_1,
		TIME
	};


}
