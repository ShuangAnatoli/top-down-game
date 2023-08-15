/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0343743A
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 01DCF140
/// @DnDArgument : "obj" "o_controls"
/// @DnDSaveInfo : "obj" "o_controls"
var l01DCF140_0 = false;
l01DCF140_0 = instance_exists(o_controls);
if(l01DCF140_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2EA8CC4F
	/// @DnDApplyTo : {o_controls}
	/// @DnDParent : 01DCF140
	with(o_controls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 075447E7
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 693F8529
	/// @DnDParent : 075447E7
	/// @DnDArgument : "xpos" "600"
	/// @DnDArgument : "ypos" "room_height-100"
	/// @DnDArgument : "objectid" "o_controls"
	/// @DnDSaveInfo : "objectid" "o_controls"
	instance_create_layer(600, room_height-100, "Instances", o_controls);
}