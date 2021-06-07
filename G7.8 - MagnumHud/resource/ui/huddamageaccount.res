//#base "..\..\overrides\damage_account_digits\huddamageaccount.res"

"Resource/UI/HudDamageAccount.res"
{
	"CDamageAccountPanel"
	{
		"fieldName"				"CDamageAccountPanel"
		"text_x"				"0"
		"text_y"				"0"
		"delta_item_end_y"		"0"
		"PositiveColor"			"46 255 83 150"
		"NegativeColor"			"255 215 0 150"
		
		
		"EventColor"			"35 195 255 255" //med drops n whatnots
//		"RedRobotScoreColor"	"255 255 255 255"
//		"BlueRobotScoreColor"	"255 255 255 255"
		
		"delta_lifetime"		"5.6"
		"alpha" "125"
		"Additive" "1"
	}
	"CDamageAccountPanel"
	{
		"delta_item_font"		"be-my-bad-boy"
		"delta_item_font_big"	"be-my-bad-boy"
		
		//basically make this never appear
		//dont be my bad boy thats a bad song
	}	
//	"DoinGreatLabel"
//	{
//		"ControlName"	"CExLabel"
//		"fieldName"		"DoinGreatLabel"
//		"xpos"			"c-250"
//		"ypos"			"80"
//		"zpos"			"2"
//		"wide"			"500"
//		"tall"			"50"
//		"visible"		"1"
//		"enabled"		"1"
//		"labelText"		"U ARE DOING GREAT"
//		"textAlignment"	"center"
//		"fgcolor"		"255 215 0 255"
//		"font"			"DoinGreat"
//	}
//	"DoinGreatLabel2"
//	{
//		"ControlName"	"CExLabel"
//		"fieldName"		"DoinGreatLabel2"
//		"xpos"			"c-250"
//		"ypos"			"80"
//		"zpos"			"2"
//		"wide"			"500"
//		"tall"			"50"
//		"visible"		"1"
//		"enabled"		"1"
//		"labelText"		"U ARE DOING GREAT"
//		"textAlignment"	"center"
//		"fgcolor"		"255 215 0 255"
//		"font"			"DoinGreat"
//	}
//	"DoinGreatLabel3"
//	{
//		"ControlName"	"CExLabel"
//		"fieldName"		"DoinGreatLabel3"
//		"xpos"			"c-250"
//		"ypos"			"80"
//		"zpos"			"2"
//		"wide"			"500"
//		"tall"			"50"
//		"visible"		"1"
//		"enabled"		"1"
//		"labelText"		"U ARE DOING GREAT"
//		"textAlignment"	"center"
//		"fgcolor"		"255 215 0 255"
//		"font"			"DoinGreat"
//	}
	
	
	"DamageAccountLabel"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabel"
		"font"			"DamageText"
		"fgcolor"		"255 215 0 0" //255
		"xpos"			"c-50"
		"ypos"			"c17"
		"zpos"			"0"
		"wide"			"100"
		"tall"			"30"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}	
	"DamageAccountLabel2"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabel2"
		"font"			"DamageText"
		"fgcolor"		"255 215 0 0" //255
		"xpos"			"c-50"
		"ypos"			"c17"
		"zpos"			"0"
		"wide"			"100"
		"tall"			"30"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabel3"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabel3"
		"font"			"DamageText"
		"fgcolor"		"255 215 0 0" //255
		"xpos"			"c-50"
		"ypos"			"c17"
		"zpos"			"0"
		"wide"			"100"
		"tall"			"30"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabelShadow"
		"font"			"DamageTextShadow"
		"fgcolor"		"0 0 0 0" //150
		"xpos"			"c-50"
		"ypos"			"c18"
		"zpos"			"-1"
		"wide"			"100"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
"DamageAccountLabelShadow2"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabelShadow"
		"font"			"DamageTextShadow"
		"fgcolor"		"0 0 0 0" //150
		"xpos"			"c-50"
		"ypos"			"c18"
		"zpos"			"-1"
		"wide"			"100"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
"DamageAccountLabelShadow3"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountLabelShadow"
		"font"			"DamageTextShadow"
		"fgcolor"		"0 0 0 0" //150
		"xpos"			"c-50"
		"ypos"			"c18"
		"zpos"			"-1"
		"wide"			"100"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}	
	"DamageAccountLabelHeals"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabel"
		"font"			"DamageTextHeals"
		"fgcolor"		"46 255 83 255"
		"xpos"			"c-50"
		"ypos"			"c24"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"16"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelHeals2"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabel2"
		"font"			"DamageTextHeals"
		"fgcolor"		"46 255 83 255"
		"xpos"			"c-50"
		"ypos"			"c24"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"16"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelHeals3"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabel3"
		"font"			"DamageTextHeals"
		"fgcolor"		"46 255 83 255"
		"xpos"			"c-50"
		"ypos"			"c24"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"16"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelHealsShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabelShadow"
		"font"			"DamageTextHealsShadow"
		"fgcolor"		"0 0 0 150"
		"xpos"			"c-50"
		"ypos"			"c25"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"17"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelHealsShadow2"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabelShadow2"
		"font"			"DamageTextHealsShadow"
		"fgcolor"		"0 0 0 150"
		"xpos"			"c-50"
		"ypos"			"c25"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"17"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
	"DamageAccountLabelHealsShadow3"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountHealsLabelShadow3"
		"font"			"DamageTextHealsShadow"
		"fgcolor"		"0 0 0 150"
		"xpos"			"c-50"
		"ypos"			"c25"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"17"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"center"	
		"labelText"		"%metal%"	
	}
}