/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37B18BEE
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 16F8A74B
	/// @DnDParent : 37B18BEE
	exit;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 24E8F4BE
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "value" "x - xprevious"
var x_movement = x - xprevious;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57A63AAA
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "op" "1"
if(x_movement < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 45A984DB
	/// @DnDParent : 57A63AAA
	/// @DnDArgument : "xscale" "-3"
	/// @DnDArgument : "yscale" "3"
	image_xscale = -3;
	image_yscale = 3;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 22037420
	/// @DnDParent : 57A63AAA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_enemy_walk_right"
	/// @DnDSaveInfo : "spriteind" "s_enemy_walk_right"
	sprite_index = s_enemy_walk_right;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 387BA6FB
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 056805AB
	/// @DnDParent : 387BA6FB
	/// @DnDArgument : "xscale" "3"
	/// @DnDArgument : "yscale" "3"
	image_xscale = 3;
	image_yscale = 3;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 527B1810
	/// @DnDParent : 387BA6FB
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_enemy_walk_right"
	/// @DnDSaveInfo : "spriteind" "s_enemy_walk_right"
	sprite_index = s_enemy_walk_right;
	image_index += 0;
}