/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D3F173A
/// @DnDArgument : "expr" "point_direction(x,y,mouse_x,mouse_y)"
/// @DnDArgument : "var" "aim_direction"
aim_direction = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CA3EC85
/// @DnDArgument : "expr" "aim_direction"
/// @DnDArgument : "var" "my_gun.image_angle"
my_gun.image_angle = aim_direction;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7131B72C
/// @DnDArgument : "script" "player_attack"
/// @DnDSaveInfo : "script" "player_attack"
script_execute(player_attack);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0D58C980
/// @DnDArgument : "script" "player_facing"
/// @DnDSaveInfo : "script" "player_facing"
script_execute(player_facing);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5EF52C46
/// @DnDArgument : "script" "gun_facing"
/// @DnDSaveInfo : "script" "gun_facing"
script_execute(gun_facing);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 01B6E7E1
/// @DnDArgument : "key" "ord("A")"
var l01B6E7E1_0;
l01B6E7E1_0 = keyboard_check(ord("A"));
if (l01B6E7E1_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3033258B
	/// @DnDParent : 01B6E7E1
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "reset_variable"
	/// @DnDSaveInfo : "script" "reset_variable"
	var script_execute(reset_variable);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 027EDCA1
	/// @DnDParent : 01B6E7E1
	/// @DnDArgument : "value" "-3"
	/// @DnDArgument : "value_relative" "1"
	x += -3;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 709925DC
	/// @DnDParent : 01B6E7E1
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 61B3D220
	/// @DnDParent : 01B6E7E1
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_player_run_side"
	/// @DnDSaveInfo : "spriteind" "s_player_run_side"
	sprite_index = s_player_run_side;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02729635
	/// @DnDParent : 01B6E7E1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "left"
	left = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 51D423FC
/// @DnDArgument : "key" "ord("S")"
var l51D423FC_0;
l51D423FC_0 = keyboard_check(ord("S"));
if (l51D423FC_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5C0AE71B
	/// @DnDParent : 51D423FC
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "reset_variable"
	/// @DnDSaveInfo : "script" "reset_variable"
	var script_execute(reset_variable);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2DAE444D
	/// @DnDParent : 51D423FC
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += 3;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 647BCFCE
	/// @DnDParent : 51D423FC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_player_run_front"
	/// @DnDSaveInfo : "spriteind" "s_player_run_front"
	sprite_index = s_player_run_front;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EF41D6A
	/// @DnDParent : 51D423FC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "down"
	down = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1D116B1C
/// @DnDArgument : "key" "ord("W")"
var l1D116B1C_0;
l1D116B1C_0 = keyboard_check(ord("W"));
if (l1D116B1C_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 798DA240
	/// @DnDParent : 1D116B1C
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "reset_variable"
	/// @DnDSaveInfo : "script" "reset_variable"
	var script_execute(reset_variable);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1934BCEC
	/// @DnDParent : 1D116B1C
	/// @DnDArgument : "value" "-3"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -3;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 51C879A7
	/// @DnDParent : 1D116B1C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_player_run_back"
	/// @DnDSaveInfo : "spriteind" "s_player_run_back"
	sprite_index = s_player_run_back;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AF97C0F
	/// @DnDParent : 1D116B1C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "up"
	up = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1A10F9F5
/// @DnDArgument : "key" "ord("D")"
var l1A10F9F5_0;
l1A10F9F5_0 = keyboard_check(ord("D"));
if (l1A10F9F5_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0393F472
	/// @DnDParent : 1A10F9F5
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "reset_variable"
	/// @DnDSaveInfo : "script" "reset_variable"
	var script_execute(reset_variable);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0ED662E0
	/// @DnDParent : 1A10F9F5
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "value_relative" "1"
	x += 3;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 17CAE280
	/// @DnDParent : 1A10F9F5
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 17C818CF
	/// @DnDParent : 1A10F9F5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_player_run_side"
	/// @DnDSaveInfo : "spriteind" "s_player_run_side"
	sprite_index = s_player_run_side;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BBF979D
	/// @DnDParent : 1A10F9F5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "right"
	right = 1;
}