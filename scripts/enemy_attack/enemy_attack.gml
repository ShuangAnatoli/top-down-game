/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 24A706A1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_attack"
function enemy_attack() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 40A54658
	/// @DnDParent : 24A706A1
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
	var l40A54658_0 = collision_ellipse(x + -50, y + -50, x + 50, y + 50, o_player, true, 1);
	if((l40A54658_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58972F63
		/// @DnDParent : 40A54658
		/// @DnDArgument : "var" "attacking"
		/// @DnDArgument : "value" "false"
		if(attacking == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20B74B27
			/// @DnDParent : 58972F63
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "attacking"
			attacking = true;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 42FB8098
			/// @DnDParent : 58972F63
			speed = 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53E4F444
			/// @DnDParent : 58972F63
			/// @DnDArgument : "var" "x_dist"
			/// @DnDArgument : "value" "o_player.x - x"
			var x_dist = o_player.x - x;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33C251C5
			/// @DnDParent : 58972F63
			/// @DnDArgument : "var" "y_dist"
			/// @DnDArgument : "value" "o_player.y - y"
			var y_dist = o_player.y - y;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7946AC24
			/// @DnDParent : 58972F63
			/// @DnDArgument : "var" "x_dist"
			/// @DnDArgument : "op" "1"
			if(x_dist < 0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 1C4D8ED4
				/// @DnDParent : 7946AC24
				/// @DnDArgument : "spriteind" "s_enemy_attack_right"
				/// @DnDSaveInfo : "spriteind" "s_enemy_attack_right"
				sprite_index = s_enemy_attack_right;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 37150CF4
				/// @DnDParent : 7946AC24
				/// @DnDArgument : "xscale" "-3"
				/// @DnDArgument : "yscale" "3"
				image_xscale = -3;
				image_yscale = 3;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3E0555D6
			/// @DnDParent : 58972F63
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A5001F7
				/// @DnDParent : 3E0555D6
				/// @DnDArgument : "var" "x_dist"
				/// @DnDArgument : "op" "2"
				if(x_dist > 0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 41978579
					/// @DnDParent : 2A5001F7
					/// @DnDArgument : "spriteind" "s_enemy_attack_right"
					/// @DnDSaveInfo : "spriteind" "s_enemy_attack_right"
					sprite_index = s_enemy_attack_right;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 27173CEC
					/// @DnDParent : 2A5001F7
					/// @DnDArgument : "xscale" "3"
					/// @DnDArgument : "yscale" "3"
					image_xscale = 3;
					image_yscale = 3;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3ADA512D
				/// @DnDParent : 3E0555D6
				/// @DnDArgument : "var" "y_dist"
				/// @DnDArgument : "op" "2"
				if(y_dist > 0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 46C6FE46
					/// @DnDParent : 3ADA512D
					/// @DnDArgument : "spriteind" "s_enemy_attack_front"
					/// @DnDSaveInfo : "spriteind" "s_enemy_attack_front"
					sprite_index = s_enemy_attack_front;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 2A7E7FDF
				/// @DnDParent : 3E0555D6
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 15E8CA97
					/// @DnDParent : 2A7E7FDF
					/// @DnDArgument : "var" "y_dist"
					/// @DnDArgument : "op" "1"
					if(y_dist < 0)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 322F171B
						/// @DnDParent : 15E8CA97
						/// @DnDArgument : "spriteind" "s_enemy_attack_back"
						/// @DnDSaveInfo : "spriteind" "s_enemy_attack_back"
						sprite_index = s_enemy_attack_back;
						image_index = 0;
					}
				}
			}
		}
	}
}