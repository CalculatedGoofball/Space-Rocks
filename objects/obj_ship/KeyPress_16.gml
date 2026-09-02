/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 7C5A99A6
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7933ED8B
/// @DnDArgument : "var" "lasers_left"
/// @DnDArgument : "op" "2"
if(lasers_left > 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 082F23DC
	/// @DnDParent : 7933ED8B
	/// @DnDArgument : "soundid" "mus_sfx_chainsaw"
	/// @DnDSaveInfo : "soundid" "mus_sfx_chainsaw"
	audio_play_sound(mus_sfx_chainsaw, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38298DFD
	/// @DnDParent : 7933ED8B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newLaser"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_laser"
	/// @DnDSaveInfo : "objectid" "obj_laser"
	var newLaser = instance_create_layer(x + 0, y + 0, "Instances", obj_laser);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BEC3240
	/// @DnDParent : 7933ED8B
	/// @DnDArgument : "expr" "image_angle"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "newLaser.direction"
	newLaser.direction += image_angle;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474202D8
	/// @DnDParent : 7933ED8B
	/// @DnDArgument : "expr" "image_angle"
	/// @DnDArgument : "var" "newLaser.image_angle"
	newLaser.image_angle = image_angle;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 280619FF
	/// @DnDParent : 7933ED8B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lasers_left"
	lasers_left += -1;
}