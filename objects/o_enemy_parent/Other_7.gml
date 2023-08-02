/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44E0CFE1
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2257C4FE
	/// @DnDParent : 44E0CFE1
	/// @DnDArgument : "expr" "false"
	variable = false;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B5895D0
	/// @DnDParent : 44E0CFE1
	/// @DnDArgument : "script" "enemy_move"
	/// @DnDSaveInfo : "script" "enemy_move"
	script_execute(enemy_move);
}