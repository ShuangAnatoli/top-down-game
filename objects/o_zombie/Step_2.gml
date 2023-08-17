/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7716B454
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2B5BEA79
/// @DnDArgument : "obj" "o_player"
/// @DnDSaveInfo : "obj" "o_player"
var l2B5BEA79_0 = false;
l2B5BEA79_0 = instance_exists(o_player);
if(l2B5BEA79_0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3C099A19
	/// @DnDParent : 2B5BEA79
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_distance"
	/// @DnDArgument : "arg" "x,y,o_player.x,o_player.y"
	var distance = point_distance(x,y,o_player.x,o_player.y);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 0F5FE2D0
	/// @DnDParent : 2B5BEA79
	/// @DnDArgument : "sound" "zombie_sound"
	/// @DnDArgument : "volume" "100/distance"
	audio_sound_gain(zombie_sound, 100/distance, 0);
}