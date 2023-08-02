/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6157FE1F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_attack"
function enemy_attack() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 40994F18
	/// @DnDParent : 6157FE1F
	/// @DnDArgument : "x1" "-50"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-50"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "50"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "50"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_player"
	/// @DnDArgument : "shape" "2"
	/// @DnDSaveInfo : "obj" "o_player"
	var l40994F18_0 = collision_ellipse(x + -50, y + -50, x + 50, y + 50, o_player, true, 1);
	if((l40994F18_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 335865CD
		/// @DnDParent : 40994F18
		/// @DnDArgument : "var" "attacking"
		/// @DnDArgument : "value" "false"
		if(attacking == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27533040
			/// @DnDParent : 335865CD
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "attacking"
			attacking = true;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 20FE43EC
			/// @DnDParent : 335865CD
			speed = 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3554174D
			/// @DnDParent : 335865CD
			/// @DnDArgument : "var" "x_dist"
			/// @DnDArgument : "value" "o_player.x - x"
			var x_dist = o_player.x - x;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C4B3BD5
			/// @DnDParent : 335865CD
			/// @DnDArgument : "var" "y_dist"
			/// @DnDArgument : "value" "o_player.y - y"
			var y_dist = o_player.y - y;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61DC5F41
			/// @DnDParent : 335865CD
			/// @DnDArgument : "var" "x_dist"
			/// @DnDArgument : "op" "1"
			if(x_dist < 0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0F59F2B7
				/// @DnDParent : 61DC5F41
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "s_enemy_attack_right"
				/// @DnDSaveInfo : "spriteind" "s_enemy_attack_right"
				sprite_index = s_enemy_attack_right;
				image_index += 0;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 518164DE
				/// @DnDParent : 61DC5F41
				/// @DnDArgument : "xscale" "-3"
				/// @DnDArgument : "yscale" "3"
				image_xscale = -3;
				image_yscale = 3;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 07907A7C
			/// @DnDParent : 335865CD
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A95A07E
				/// @DnDParent : 07907A7C
				/// @DnDArgument : "var" "x_dist"
				/// @DnDArgument : "op" "2"
				if(x_dist > 0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0E31E294
					/// @DnDParent : 2A95A07E
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "s_enemy_attack_right"
					/// @DnDSaveInfo : "spriteind" "s_enemy_attack_right"
					sprite_index = s_enemy_attack_right;
					image_index += 0;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 179A9B24
					/// @DnDParent : 2A95A07E
					/// @DnDArgument : "xscale" "3"
					/// @DnDArgument : "yscale" "3"
					image_xscale = 3;
					image_yscale = 3;
				}
			}
		}
	}
}