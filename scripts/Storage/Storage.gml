// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Storage(id): IRegisterable(id) constructor{
	root={}
	function Save(){
		
	}
	function Load(){
		
	}
	function GetRoot(){
		return root;
	}
}
function StorageManager(): IRegisterManager("Storage") constructor{}