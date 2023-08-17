/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5833E8DB
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6E983B68
/// @DnDArgument : "obj" "o_player"
/// @DnDSaveInfo : "obj" "o_player"
var l6E983B68_0 = false;
l6E983B68_0 = instance_exists(o_player);
if(l6E983B68_0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 015C5FEE
	/// @DnDParent : 6E983B68
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_distance"
	/// @DnDArgument : "arg" "x,y,o_player.x,o_player.y"
	var distance = point_distance(x,y,o_player.x,o_player.y);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 0E2A9886
	/// @DnDParent : 6E983B68
	/// @DnDArgument : "sound" "zombie_sound"
	/// @DnDArgument : "volume" "50/distance"
	audio_sound_gain(zombie_sound, 50/distance, 0);
}