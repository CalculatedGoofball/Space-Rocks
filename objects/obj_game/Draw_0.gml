/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4C91A8BD
/// @DnDArgument : "expr" "room"
var l4C91A8BD_0 = room;
switch(l4C91A8BD_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0CB6BEB3
	/// @DnDParent : 4C91A8BD
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4FBD79CA
		/// @DnDParent : 0CB6BEB3
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 706BDC5A
		/// @DnDParent : 0CB6BEB3
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives_icon"
		/// @DnDSaveInfo : "sprite" "spr_lives_icon"
		var l706BDC5A_0 = sprite_get_width(spr_lives_icon);
		var l706BDC5A_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l706BDC5A_2 = __dnd_lives; l706BDC5A_2 > 0; --l706BDC5A_2) {
			draw_sprite(spr_lives_icon, 0, 20 + l706BDC5A_1, 40);
			l706BDC5A_1 += l706BDC5A_0;
		}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 6EF192B5
		/// @DnDParent : 0CB6BEB3
		/// @DnDArgument : "font" "fnt_text"
		/// @DnDSaveInfo : "font" "fnt_text"
		draw_set_font(fnt_text);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 00D7C16A
	/// @DnDParent : 4C91A8BD
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3E39E33D
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6D2D355F
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l6D2D355F_0=($FF00FFFF >> 24);
		draw_set_alpha(l6D2D355F_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1F4E6F19
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS ""
		draw_text_transformed(250, 100, string("SPACE ROCKS ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 24DFFF17
		/// @DnDParent : 00D7C16A
		draw_set_colour($FFFFFFFF & $ffffff);
		var l24DFFF17_0=($FFFFFFFF >> 24);
		draw_set_alpha(l24DFFF17_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4F3A3623
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 points to win! ""
		draw_text(250, 200, string("Score 1000 points to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7CBC51AB
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Rotate with LEFT/RIGHT, Accel with UP ""
		draw_text(250, 230, string("Rotate with LEFT/RIGHT, Accel with UP ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 39C67749
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot ""
		draw_text(250, 260, string("Press SPACE to shoot ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 76960509
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l76960509_0=($FF00FFFF >> 24);
		draw_set_alpha(l76960509_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 00E88BA4
		/// @DnDParent : 00D7C16A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">PRESS ENTER TO START< ""
		draw_text(250, 350, string(">PRESS ENTER TO START< ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 28025DDF
		/// @DnDParent : 00D7C16A
		draw_set_colour($FFFFFFFF & $ffffff);
		var l28025DDF_0=($FFFFFFFF >> 24);
		draw_set_alpha(l28025DDF_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 113F0F26
		/// @DnDParent : 00D7C16A
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25C1C4AC
	/// @DnDParent : 4C91A8BD
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 138AAFD6
		/// @DnDParent : 25C1C4AC
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3F4D1A24
		/// @DnDParent : 25C1C4AC
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l3F4D1A24_0=($FF0000FF >> 24);
		draw_set_alpha(l3F4D1A24_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 542A14AB
		/// @DnDParent : 25C1C4AC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""WOMP WOMP ""
		draw_text_transformed(250, 150, string("WOMP WOMP ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5617345C
		/// @DnDParent : 25C1C4AC
		draw_set_colour($FFFFFFFF & $ffffff);
		var l5617345C_0=($FFFFFFFF >> 24);
		draw_set_alpha(l5617345C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 63E3CEF9
		/// @DnDParent : 25C1C4AC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2180699A
		/// @DnDParent : 25C1C4AC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<: ""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<: ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EFC5D21
		/// @DnDParent : 25C1C4AC
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 738ADBB2
	/// @DnDParent : 4C91A8BD
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 35101C56
		/// @DnDParent : 738ADBB2
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4984C449
		/// @DnDParent : 738ADBB2
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l4984C449_0=($FF00FF00 >> 24);
		draw_set_alpha(l4984C449_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2737AABC
		/// @DnDParent : 738ADBB2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOUR DID IT!! ""
		draw_text_transformed(250, 150, string("YOUR DID IT!! ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 726145DE
		/// @DnDParent : 738ADBB2
		draw_set_colour($FFFFFFFF & $ffffff);
		var l726145DE_0=($FFFFFFFF >> 24);
		draw_set_alpha(l726145DE_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0BF7740D
		/// @DnDParent : 738ADBB2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 530E68B8
		/// @DnDParent : 738ADBB2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<: ""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<: ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A22BBC7
		/// @DnDParent : 738ADBB2
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}