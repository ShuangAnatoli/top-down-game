/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15384448
/// @DnDInput : 2
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "gun_distance"
/// @DnDArgument : "var_1" "gun_frame"
gun_distance = 30;
gun_frame = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 721432F4
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "my_gun"
/// @DnDArgument : "objectid" "o_guns"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "o_guns"
my_gun = instance_create_layer(x + 0, y + 0, "Player", o_guns);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB665A4
/// @DnDArgument : "expr" "s_cursor"
/// @DnDArgument : "var" "cursor_sprite"
cursor_sprite = s_cursor;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5257EA34
/// @DnDArgument : "function" "window_set_cursor"
/// @DnDArgument : "arg" "cr_none"
window_set_cursor(cr_none);

/// @DnDAction : YoYo Games.Miscellaneous.Set_Window_State
/// @DnDVersion : 1
/// @DnDHash : 47ADD5E5
/// @DnDArgument : "type" "2"
window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 151BCA3D
/// @DnDInput : 4
/// @DnDArgument : "var" "left"
/// @DnDArgument : "var_1" "right"
/// @DnDArgument : "var_2" "up"
/// @DnDArgument : "var_3" "down"
left = 0;
right = 0;
up = 0;
down = 0;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4522681A
/// @DnDArgument : "obj" "o_player"
/// @DnDSaveInfo : "obj" "o_player"
var l4522681A_0 = false;
l4522681A_0 = instance_exists(o_player);
if(l4522681A_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 227549B9
	/// @DnDParent : 4522681A
	/// @DnDArgument : "soundid" "snd_background"
	/// @DnDSaveInfo : "soundid" "snd_background"
	audio_play_sound(snd_background, 0, 0, 1.0, undefined, 1.0);
}