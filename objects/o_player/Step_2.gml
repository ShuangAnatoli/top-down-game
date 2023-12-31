/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0EF1DDF7
/// @DnDArgument : "expr" "depth-1"
/// @DnDArgument : "var" "my_gun.depth"
my_gun.depth = depth-1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CE4997A
/// @DnDInput : 2
/// @DnDArgument : "expr" "x + lengthdir_x(gun_distance,aim_direction)"
/// @DnDArgument : "expr_1" "y + lengthdir_y(gun_distance,aim_direction)"
/// @DnDArgument : "var" "my_gun.x"
/// @DnDArgument : "var_1" "my_gun.y"
my_gun.x = x + lengthdir_x(gun_distance,aim_direction);
my_gun.y = y + lengthdir_y(gun_distance,aim_direction);

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
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_player_idle_right"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_right"
		sprite_index = s_player_idle_right;
		image_index += 0;
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
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_player_idle_right"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_right"
		sprite_index = s_player_idle_right;
		image_index += 0;
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
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_player_idle_back"
		/// @DnDSaveInfo : "spriteind" "s_player_idle_back"
		sprite_index = s_player_idle_back;
		image_index += 0;
	}
}