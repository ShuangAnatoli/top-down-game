/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76C65830
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B436C45
	/// @DnDParent : 76C65830
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "attacking"
	attacking = false;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3BAB5BBD
	/// @DnDParent : 76C65830
	/// @DnDArgument : "script" "enemy_move"
	/// @DnDSaveInfo : "script" "enemy_move"
	script_execute(enemy_move);
}