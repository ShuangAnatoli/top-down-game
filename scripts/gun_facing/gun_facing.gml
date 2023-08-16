/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 12C49484
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "gun_facing"
function gun_facing() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CD2A3ED
	/// @DnDParent : 12C49484
	/// @DnDArgument : "var" "_facing"
	/// @DnDArgument : "value" "(aim_direction > 90 and aim_direction < 270)"
	var _facing = (aim_direction > 90 and aim_direction < 270);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F447E1F
	/// @DnDParent : 12C49484
	/// @DnDArgument : "var" "_facing"
	/// @DnDArgument : "value" "1"
	if(_facing == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 26434149
		/// @DnDApplyTo : {o_guns}
		/// @DnDParent : 5F447E1F
		/// @DnDArgument : "xscale" "0.2"
		/// @DnDArgument : "yscale" "-0.2"
		with(o_guns) {
		image_xscale = 0.2;
		image_yscale = -0.2;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 54876885
	/// @DnDParent : 12C49484
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 65C4B2D9
		/// @DnDApplyTo : {o_guns}
		/// @DnDParent : 54876885
		/// @DnDArgument : "xscale" "0.2"
		/// @DnDArgument : "yscale" "0.2"
		with(o_guns) {
		image_xscale = 0.2;
		image_yscale = 0.2;
		}
	}
}