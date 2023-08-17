/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3BFB06C0
event_inherited();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0C4DC760
/// @DnDArgument : "target" "zombie_sound"
/// @DnDArgument : "soundid" "snd_zombie"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_zombie"
zombie_sound = audio_play_sound(snd_zombie, 0, 1, 1.0, undefined, 1.0);