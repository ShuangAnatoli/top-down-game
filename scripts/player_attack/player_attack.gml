/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 415AE8BE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_attack"
function player_attack() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 1AD183AA
	/// @DnDParent : 415AE8BE
	var l1AD183AA_0;
	l1AD183AA_0 = mouse_check_button(mb_left);
	if (l1AD183AA_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7401A7B5
		/// @DnDParent : 1AD183AA
		/// @DnDArgument : "var" "alarm[1]"
		/// @DnDArgument : "op" "1"
		if(alarm[1] < 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5B9FEBC0
			/// @DnDParent : 7401A7B5
			/// @DnDArgument : "soundid" "snd_shoot"
			/// @DnDSaveInfo : "soundid" "snd_shoot"
			audio_play_sound(snd_shoot, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 7563BC85
			/// @DnDParent : 7401A7B5
			/// @DnDArgument : "steps" "1"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 1);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 47278F51
	/// @DnDParent : 415AE8BE
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 29D236F5
		/// @DnDParent : 47278F51
		/// @DnDArgument : "steps" "-1"
		/// @DnDArgument : "steps_relative" "1"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, -1 + alarm_get(1));
	}
}