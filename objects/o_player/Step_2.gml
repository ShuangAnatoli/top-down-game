/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1EA1E800
/// @DnDArgument : "key" "vk_nokey"
var l1EA1E800_0;
l1EA1E800_0 = keyboard_check(vk_nokey);
if (l1EA1E800_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64FD3C8A
	/// @DnDParent : 1EA1E800
	/// @DnDArgument : "var" "left"
	/// @DnDArgument : "value" "1"
	if(left == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0FC2C7C9
		/// @DnDParent : 64FD3C8A
		/// @DnDArgument : "spriteind" "s_player_idle_right"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_right"
		sprite_index = s_player_idle_right;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CD771EA
	/// @DnDParent : 1EA1E800
	/// @DnDArgument : "var" "right"
	/// @DnDArgument : "value" "1"
	if(right == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 61870DEA
		/// @DnDParent : 6CD771EA
		/// @DnDArgument : "spriteind" "s_player_idle_right"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_right"
		sprite_index = s_player_idle_right;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 789E7A57
	/// @DnDParent : 1EA1E800
	/// @DnDArgument : "var" "down"
	/// @DnDArgument : "value" "1"
	if(down == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 12FA1DD8
		/// @DnDParent : 789E7A57
		/// @DnDArgument : "spriteind" "s_player_idle_front"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_front"
		sprite_index = s_player_idle_front;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DB2456E
	/// @DnDParent : 1EA1E800
	/// @DnDArgument : "var" "up"
	/// @DnDArgument : "value" "1"
	if(up == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0CD32D6E
		/// @DnDParent : 0DB2456E
		/// @DnDArgument : "spriteind" "s_player_idle_back"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_back"
		sprite_index = s_player_idle_back;
		image_index = 0;
	}
}