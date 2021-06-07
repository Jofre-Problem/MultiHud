"Resource/UI/HudTeamGoalTournament.res"
{
	"HudStopWatchObjective"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"HudStopWatchObjective"
		"xpos"				"r0"
		"ypos"				"r0"
		"zpos"				"1"
		"wide"				"0"
		"tall"				"0"
		"visible"			"0"
		"enabled"			"1"

		if_comp
		{
			"ypos"	"r0"
		}

		"HudStopWatchObjectiveBG"
		{
			"ControlName"		"ScalableImagePanel"
			"fieldName"		"HudStopWatchObjectiveBG"
			"xpos"			"0"
			"ypos"			"0"
			"zpos"			"-1"
			"wide"			"275"
			"tall"			"170"
			"autoResize"		"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"0"
			"image"			"../HUD/color_panel_browner"


			"src_corner_height"	"23"				// pixels inside the image
			"src_corner_width"	"23"

			"draw_corner_width"	"7"				// screen size of the corners ( and sides ), proportional
			"draw_corner_height" 	"7"
		}
		"HudStopWatchObjectiveBGSmall"
		{
			"ControlName"		"ScalableImagePanel"
			"fieldName"		"HudStopWatchObjectiveBGSmall"
			"xpos"			"r0"
			"ypos"			"r0"
			"zpos"			"-1"
			"wide"			"0"
			"tall"			"0"
			"autoResize"		"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"1"
			"image"			"../HUD/color_panel_browner"


			"src_corner_height"	"23"				// pixels inside the image
			"src_corner_width"	"23"

			"draw_corner_width"	"7"				// screen size of the corners ( and sides ), proportional
			"draw_corner_height" 	"7"
		}
		"HudStopWatchObjectiveLabel"
		{
			"ControlName"		"Label"
			"fieldName"		"HudStopWatchObjectiveLabel"
			"font"			"HudFontSmallBoldShadow"
			"xpos"			"25"
			"ypos"			"15"
			"zpos"			"1"
			"wide"			"275"
			"tall"			"15"
			"autoResize"		"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"0"
			"wrap"			"1"
			"labelText"		"%objectivelabel%"
			"textAlignment"		"west"
		}
		"HudStopWatchObjectiveText1"
		{
			"ControlName"		"CExRichText"
			"fieldName"		"HudStopWatchObjectiveText1"
			"xpos"			"r0"
			"ypos"			"r0"
			"wide"			"0"
			"tall"			"0"
			"wrap"			"1"
			"autoResize"		"1"
			"pinCorner"		"1"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"		"west"
			"font"			"HudFontSmallestShadow"
			"maxchars"		"-1"
		}

		"HudStopWatchObjectiveShadedBar"
		{
			"ControlName"		"ImagePanel"
			"fieldName"		"HudStopWatchObjectiveShadedBar"
			"xpos"			"25"
			"ypos"			"65"
			"zpos"			"2"
			"wide"			"225"
			"tall"			"2"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"0"
			"tabPosition"	"0"
			"fillcolor"		"125 125 125 125"
			"PaintBackgroundType"	"0"
		}

		"HudStopWatchObjectiveText2"
		{
			"ControlName"		"CExRichText"
			"fieldName"		"HudStopWatchObjectiveText2"
			"xpos"			"25"	[$WIN32]
			"ypos"			"75"	[$WIN32]
			"wide"			"225"
			"tall"			"165"
			"wrap"			"1"
			"autoResize"		"1"
			"pinCorner"		"1"
			"visible"		"0"
			"enabled"		"0"
			"labelText"		""
			"textAlignment"		"west"
			"font"			"HudFontSmallestShadow"
			"maxchars"		"-1"
		}
	}

	"HudStopWatchObjectiveArrow"
	{
		"ControlName"		"ScalableImagePanel"
		"fieldName"		"HudStopWatchObjectiveArrow"
		"xpos"			"r0"
		"ypos"			"r0"
		"zpos"			"-1"
		"wide"			"0"
		"tall"			"0"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../HUD/arrow_big"

		if_comp
		{
			"ypos"	"r0"
		}
	}
}