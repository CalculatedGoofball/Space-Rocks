/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 011DD7CE
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78CB7325
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "__dnd_score"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 17959A3F
		/// @DnDParent : 78CB7325
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "snd_win"
		audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4A726D99
		/// @DnDParent : 78CB7325
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "rm_win"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E95605B
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "__dnd_lives"
	/// @DnDArgument : "op" "1"
	if(__dnd_lives < 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 1FD6D2E1
		/// @DnDParent : 3E95605B
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "snd_lose"
		audio_play_sound(snd_lose, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 43CCD8F8
		/// @DnDParent : 3E95605B
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "rm_gameover"
		room_goto(rm_gameover);
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0182D75E
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "deploy_bean"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "1800"
	var deploy_bean = floor(random_range(0, 1800 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19EDE83B
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "deploy_bean"
	/// @DnDArgument : "value" "1800"
	if(deploy_bean == 1800)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 2F7C1929
		/// @DnDInput : 2
		/// @DnDParent : 19EDE83B
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FC2C2D8
		/// @DnDParent : 19EDE83B
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 7C3260CC
			/// @DnDInput : 2
			/// @DnDParent : 2FC2C2D8
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option" "room_width"
			var xx = choose(room_width, 0);
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 09E22EF9
			/// @DnDParent : 2FC2C2D8
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(0, room_height));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7D3EC48E
		/// @DnDParent : 19EDE83B
		else
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 0C84DA14
			/// @DnDInput : 2
			/// @DnDParent : 7D3EC48E
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option" "room_height"
			var yy = choose(room_height, 0);
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7C2D964C
			/// @DnDParent : 7D3EC48E
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(0, room_width));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E7103F9
		/// @DnDParent : 19EDE83B
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_amogus"
		/// @DnDSaveInfo : "objectid" "obj_amogus"
		instance_create_layer(xx, yy, "Instances", obj_amogus);
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3CB026A8
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "deploy_meteor"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "1800"
	var deploy_meteor = floor(random_range(0, 1800 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C4FEBAC
	/// @DnDParent : 011DD7CE
	/// @DnDArgument : "var" "deploy_meteor"
	/// @DnDArgument : "value" "1800"
	if(deploy_meteor == 1800)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 23FBBA12
		/// @DnDInput : 2
		/// @DnDParent : 4C4FEBAC
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CB3754C
		/// @DnDParent : 4C4FEBAC
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 7869E36A
			/// @DnDInput : 2
			/// @DnDParent : 7CB3754C
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option" "room_width"
			var xx = choose(room_width, 0);
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5D9CA551
			/// @DnDParent : 7CB3754C
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(0, room_height));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1FEC4D35
		/// @DnDParent : 4C4FEBAC
		else
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 3411AFE5
			/// @DnDInput : 2
			/// @DnDParent : 1FEC4D35
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option" "room_height"
			var yy = choose(room_height, 0);
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 11457B26
			/// @DnDParent : 1FEC4D35
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(0, room_width));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6C28D2FE
		/// @DnDParent : 4C4FEBAC
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_amogus"
		/// @DnDSaveInfo : "objectid" "obj_amogus"
		instance_create_layer(xx, yy, "Instances", obj_amogus);
	}
}