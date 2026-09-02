/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 18904676
/// @DnDArgument : "lives" "1"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 51EB02F8
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lasers_left"
lasers_left = 3;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2F2CA1EC
/// @DnDApplyTo : {obj_amogus}
with(obj_amogus) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A704C7B
	/// @DnDParent : 2F2CA1EC
	instance_destroy();
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 25EE0B60
/// @DnDArgument : "soundid" "snd_amogus"
/// @DnDSaveInfo : "soundid" "snd_amogus"
audio_play_sound(snd_amogus, 0, 0, 1.0, undefined, 1.0);