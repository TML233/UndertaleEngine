/// @args x
/// @args y
/// @args string
/// @args [prefix
/// @args depth]

var _xx     = argument[0];
var _yy     = argument[1];
var _text   = argument[2];
var _prefix = "";
var _depth  = DEPTH_UI.TEXT;

if (argument_count > 3)
	_prefix = argument[3];

if (argument_count > 4)
	_depth  = argument[4];


var _typer = instance_create_depth(_xx, _yy, _depth, text_typer);
_typer.text = _prefix + _text;