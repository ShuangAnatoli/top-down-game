/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 30B805F4
/// @DnDArgument : "colour" "$FF211699"
image_blend = $FF211699 & $ffffff;
image_alpha = ($FF211699 >> 24) / $ff;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2150270C
/// @DnDArgument : "x" "other.x"
/// @DnDArgument : "y" "other.y"
direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 0B4BED81
/// @DnDArgument : "direction" "180"
/// @DnDArgument : "direction_relative" "1"
direction += 180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 33F627D7
/// @DnDArgument : "speed" "12"
speed = 12;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1A46945A
/// @DnDArgument : "steps" "40"
alarm_set(0, 40);