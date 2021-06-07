"Resource/UI/SelectPlayerDialog.res"
{
"SelectPlayerDialog"
{
"fieldName""SelectPlayerDialog"
"visible""1"
"enabled""1"
"xpos""c-200"
"ypos""80"
"wide""400"
"tall""300"
"bgcolor_override""Nada"
"paintbackgroundtype""2"
"settitlebarvisible"""
"border""GrayDialogBorder"

"button_kv"
{
"xpos""10"
"ypos""0"
"wide""350"
"tall""30"

"button"
{
"xpos""0"
"ypos""0"
"wide""350"
"tall""30"

"pinCorner""3"
"visible""1"
"enabled""1"

"labelText"""
"font""CustomDmgFontSmallOutline"
"textAlignment""west"
"textinsetx""34"
"use_proportional_insets" "1"
"dulltext""0"
"brighttext""0"
"default""1"
"sound_depressed""UI/buttonclick.wav"
"sound_released""UI/buttonclickrelease.wav"
}

"avatar"
{
"ControlName""CAvatarImagePanel"
"fieldName""avatar"
"xpos""5"
"ypos""5"
"zpos""1"
"wide""20"
"tall""20"
"image"""
"visible""1"
"enabled""1"
"scaleImage""1"
"color_outline""HudTimerProgressInActive"
}
}
}

"TitleLabel"
{
"ControlName""CExLabel"
"fieldName""TitleLabel"
"font""HudFontMedium"
"labelText""%title%"
"textAlignment""north"
"xpos""0"
"ypos""15"
"zpos""1"
"wide""400"
"tall""25"


"visible""1"
"enabled""1"
"fgcolor_override" "LightRed"
}

"PlayerListScroller"
{
"ControlName""ScrollableEditablePanel"
"fieldName""PlayerListScroller"
"xpos""10"
"ypos""80"
"wide""380"
"tall""130"
"PaintBackgroundType""2"
"fgcolor_override""TanDark"
"bgcolor_override""0 0 0 64"

"PlayerList"
{
"ControlName""EditablePanel"
"fieldName""PlayerList"
"xpos""0"
"ypos""0"
"wide""190"
"tall""130"
"visible""1"
}
}

"StatePanel0"
{
"ControlName""EditablePanel"
"fieldName" "StatePanel0"
"visible" "1"
"enabled" "1"
"xpos""0"
"ypos""50"
"wide" "400"
"tall" "180"
"PaintBackgroundType""2"

"QueryLabel"
{
"ControlName""CExLabel"
"fieldName""QueryLabel"
"font""CustomDmgFontSmallOutline"
"labelText""#TF_SelectPlayer_Select"
"textAlignment""north"
"xpos""0"
"ypos""10"
"zpos""-1"
"wide""400"
"tall""15"


"visible""1"
"enabled""1"
"fgcolor_override" "HudOffWhite"
}

"subbutton0"
{
"ControlName""CExButton"
"fieldName""subbutton0"
"xpos""100"
"ypos""50"
"zpos""1"
"wide""200"
"tall""25"

"pinCorner""3"
"visible""1"
"enabled""1"

"labelText""#TF_SelectPlayer_SelectFriends"
"font""CustomDmgFontSmallOutline"
"textAlignment""center"
"dulltext""0"
"brighttext""0"
"default""1"
"Command""friends"
"sound_depressed""UI/buttonclick.wav"
"sound_released""UI/buttonclickrelease.wav"
}
"subbutton1"
{
"ControlName""CExButton"
"fieldName""subbutton1"
"xpos""100"
"ypos""90"
"zpos""1"
"wide""200"
"tall""25"

"pinCorner""3"
"visible""1"
"enabled""1"

"labelText""#TF_FindCoachDialog_Match"
"font""CustomDmgFontSmallOutline"
"textAlignment""center"
"dulltext""0"
"brighttext""0"
"default""1"
"Command""performmatchmaking"
"sound_depressed""UI/buttonclick.wav"
"sound_released""UI/buttonclickrelease.wav"
}
}
"StatePanel1"
{
"ControlName""EditablePanel"
"fieldName" "StatePanel1"
"visible" "1"
"enabled" "1"
"xpos""0"
"ypos""50"
"wide" "400"
"tall" "180"
"PaintBackgroundType""2"

"QueryLabel"
{
"ControlName""CExLabel"
"fieldName""QueryLabel"
"font""CustomDmgFontSmallOutline"
"labelText""#TF_SelectPlayer_Friends"
"textAlignment""north"
"xpos""0"
"ypos""10"
"wide""400"
"tall""15"


"visible""1"
"enabled""1"
"fgcolor_override" "HudOffWhite"
}

"EmptyPlayerListLabel"
{
"ControlName""CExLabel"
"fieldName""EmptyPlayerListLabel"
"font""CustomDmgFontSmallOutline"
"labelText""#TF_SelectPlayer_FriendsNone"
"textAlignment""north"
"xpos""0"
"ypos""60"
"zpos""1"
"wide""400"
"tall""30"


"visible""1"
"enabled""1"
"wrap""1"
"centerwrap""1"
"fgcolor_override" "HudOffWhite"
}
}

"CancelButton"
{
"ControlName""CExButton"
"fieldName""CancelButton"
"xpos""150"
"ypos""250"
"zpos""1"
"wide""100"
"tall""25"

"pinCorner""3"
"visible""1"
"enabled""1"

"labelText""#Cancel"
"font""CustomDmgFontSmallOutline"
"textAlignment""center"
"dulltext""0"
"brighttext""0"
"default""1"
"Command""cancel"
"sound_depressed""UI/buttonclick.wav"
"sound_released""UI/buttonclickrelease.wav"
}
}
