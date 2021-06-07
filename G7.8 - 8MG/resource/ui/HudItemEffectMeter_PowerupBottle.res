"Resource/UI/HudItemEffectMeter_PowerupBottles.res"
{
	HudItemEffectMeter
	{
		"fieldName"		"HudItemEffectMeter"
		"visible"		"1"
		"enabled"		"1"
		"xpos"			"c95"	
		"ypos"			"r76"
		"wide"			"125"
		"tall"			"50"
		"MeterFG"		"White"
		"MeterBG"		"Gray"
	}
	
	"ItemEffectMeterBG"
	{
		"ControlName"	"CTFImagePanel"
		"fieldName"		"ItemEffectMeterBG"
		"xpos"			"12"
		"ypos"			"0"
		"zpos"			"0"
		"wide"			"76"
		"tall"			"44"
		"visible"		"0"
		"enabled"		"0"
		"image"			"../hud/misc_ammo_area_blue"
		"scaleImage"	"1"	
		"teambg_2"		"../hud/misc_ammo_area_red"
		"teambg_2_lodef"	"../hud/misc_ammo_area_red_lodef"
		"teambg_3"		"../hud/misc_ammo_area_blue"
		"teambg_3_lodef"	"../hud/misc_ammo_area_blue_lodef"				
	}
	
	"ItemEffectMeterLabel"
	{
		"ControlName"			"CExLabel"
		"fieldName"			"ItemEffectMeterLabel"
		"xpos"			"0"
		"ypos"			"15"
		"zpos"			"0"
		"wide"			"138"
		"tall"			"12"
		"visible"				"1"
		"enabled"				"1"
		"labelText"			"#TF_Ball"
		"fgcolor_override" "Garm3nWhite"
		"textAlignment"			"west"
		"font"				"Book9"
	}

	"ItemEffectMeter"
	{	
		"ControlName"			"ContinuousProgressBar"
		"fieldName"				"ItemEffectMeter"
		"font"					"Default"
		"xpos"					"25"
		"ypos"					"23"
		"zpos"					"2"
		"wide"					"40"
		"tall"					"6"				
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"0"
		"textAlignment"			"Left"
		"dulltext"				"0"
		"brighttext"			"0"
	}

	"CountLabel"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"CountLabel"
		"xpos"			"0"	
		"ypos"			"0"
		"zpos"					"2"
		"wide"					"90"
		"tall"					"19"	
		"pinCorner"				"2"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"Power Up:"
		"textAlignment"			"west"
		"dulltext"				"0"
		"brighttext"			"0"
		"fgcolor"		"Garm3nWhite"
		"font"				"Book16"
	}

	"ItemEffectMeterCount"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"ItemEffectMeterCount"
		"xpos"			"74"	
		"ypos"			"0"
		"zpos"					"2"
		"wide"					"90"
		"tall"					"19"	
		"pinCorner"				"2"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"%progresscount%"
		"textAlignment"			"west"
		"dulltext"				"0"
		"brighttext"			"0"
		"fgcolor"		"Garm3nWhite"
		"font"				"Book16"
	}
}
