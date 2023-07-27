/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1017F0D0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_zombie_projectile"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "o_zombie_projectile"
instance_create_layer(x + 0, y + 0, "Player", o_zombie_projectile);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 386A3542
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);