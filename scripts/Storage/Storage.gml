// A storage zone can contains many storage units, like "common", "inventories", etc.
function Storage(funcGetFilePath) : RegisterManager() constructor{
	function ClearData(){
		var ids=GetIds();
		for(var i=0;i<array_length(ids);i+=1){
			var idi=ids[i];
			show_debug_message($"Clearing StorageUnit \"{idi}\"...");
			var unit=Get(idi);
			unit.OnClear();
		}
	};
	function SerializeToJson(){
		var obj={};
		var ids=GetIds();
		for(var i=0;i<array_length(ids);i+=1){
			var idi=ids[i];
			var unit=Get(idi);
			var unitObj=unit.OnWrite();
			obj[$idi]=unitObj;
		}
		var json=json_stringify(obj,false);
		return json;
	};
	// Storage data won't be cleared if json is failed to be deserilized.
	function DeserializeFromJson(json){
		var obj;
		try{
			obj=json_parse(json);
		}catch(e){
			show_message($"Failed to deserialize json content!\n{e}");
			return false;
		}
		
		ClearData();
		
		var objIds=struct_get_names(obj);
		for(var i=0;i<array_length(objIds);i+=1){
			var objId=objIds[i];
			show_debug_message($"Reading StorageUnit \"{objId}\"...");
			if(!Contains(objId)){
				show_debug_message($"StorageUnit id \"{objId}\" not found when deserializing json. These data will not be read.");
				continue;
			}
			var unit=Get(objId);
			var objUnit=obj[$objId];
			unit.OnRead(objUnit);
		}
		return true;
	};
	self.funcGetFilePath=funcGetFilePath;
	function GetFilePath(){
		if(funcGetFilePath==undefined){
			return undefined;
		}
		return funcGetFilePath();
	}
	function SaveToFile(){
		var path=GetFilePath();
		if(is_undefined(path)){
			show_error("This storage doesn't allow saving to disk!",true);
			return false;
		}
		var json=SerializeToJson();
		var written=File_WriteAllText(path,json);
		if(!written){
			show_debug_message($"Failed to write storage to {path}");
		}
		return written;
	};
	function LoadFromFile(){
		var path=GetFilePath();
		if(is_undefined(path)){
			show_error("This storage doesn't allow loading from disk!",true);
			return false;
		}
		var json=File_ReadAllText(path);
		if(is_undefined(json)){
			show_debug_message($"Failed to load storage data from {path}!");
			return false;
		}
		return DeserializeFromJson(json);
	}
	function IsFileExists(){
		return file_exists(GetFilePath());
	}
}

// OnWrite() -> any -- When saving, return the data you want to save.
// OnRead(from: any) -- When loading, read the data from the given object.
// OnClear() -- Clear all the data this storage zone manages.
//              For example, empty the inventory, remove all data from the struct, etc.
//              No need to set the data to the gameplay-wise default value (like lv 1, hp 20).
//              Those are done in Player_CustomInitialData.
function StorageZone() constructor{
	function OnWrite(){
		return undefined;
	}
	function OnRead(from){}
	function OnClear(){}
}
// A storage unit with a sturct to hold the data.
function StorageZoneStruct() : StorageZone() constructor{
	data={};
	function GetData(){
		return data;
	}
	function OnWrite(){
		return data;
	}
	function OnRead(from){
		data=from;
	}
	function OnClear(){
		data={};
	}
	function Get(key,defaultValue=undefined){
		return data[$key]??defaultValue;
	}
	function GetOrDefault(key,defaultValue){
		return data[$key]??defaultValue;
	}
	function Set(key,value){
		data[$key]=value;
	}
}
// A storage zone that pulls data from or put data to registered inventories.
function StorageZoneInventories(inventoryManager) : StorageZone() constructor{
	self.inventories=inventoryManager;
	
	function OnWrite(){
		var data={};
		var ids=inventories.GetIds();
		var length=array_length(ids);
		for(var i=0;i<length;i+=1){
			var idi=ids[i];
			var inventory=inventories.Get(idi);
			data[$idi]=inventory.GetRawArray();
		}
		return data;
	}
	function OnRead(from){
		var ids=inventories.GetIds();
		var length=array_length(ids);
		for(var i=0;i<length;i+=1){
			var idi=ids[i];
			if(!struct_exists(from,idi)){
				continue;
			}
			
			var data=from[$idi];
			var inventory=inventories.Get(idi);
			if(!is_array(data)){
				show_message($"Inventory data of {idi} in save file is invalid!");
				continue;
			}
			inventory.SetRawArray(data);
		}
	}
	
	function OnClear(){
		var ids=inventories.GetIds();
		var length=array_length(ids);
		for(var i=0;i<length;i+=1){
			var inventory=inventories.Get(ids[i]);
			inventory.Clear();
		}
	}
}