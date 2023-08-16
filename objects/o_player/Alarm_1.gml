/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D7BC9B5
/// @DnDArgument : "xpos" "o_guns.x"
/// @DnDArgument : "ypos" "o_guns.y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "o_player_projectile"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "o_player_projectile"
instance_create_layer(o_guns.x, o_guns.y, "Player", o_player_projectile);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0F149DE0
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);