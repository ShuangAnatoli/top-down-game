/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 12C49484
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_facing"
function player_facing() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C4DB3F1
	/// @DnDParent : 12C49484
	/// @DnDArgument : "var" "mouse_x - o_player.x"
	/// @DnDArgument : "op" "1"
	if(mouse_x - o_player.x < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 18E312D0
		/// @DnDParent : 3C4DB3F1
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3316F266
	/// @DnDParent : 12C49484
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CC5FA08
		/// @DnDParent : 3316F266
		/// @DnDArgument : "var" "mouse_x - o_player.x"
		/// @DnDArgument : "op" "2"
		if(mouse_x - o_player.x > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 7C3782E4
			/// @DnDParent : 1CC5FA08
			image_xscale = 1;
			image_yscale = 1;
		}
	}
}