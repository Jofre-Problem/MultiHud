"Resource/UI/HudAmmoWeapons.res"
{
	"HudWeaponAmmoBG"
	{
		"ControlName"	"CTFImagePanel"
		"fieldName"		"HudWeaponAmmoBG"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"1"
		"wide"			"0"
		"tall"			"50"
		"visible"		"0"
		"enabled"		"0"
		"image"			"../hud/ammo_blue_bg"
		"scaleImage"	"1"	
		"teambg_2"		"../hud/ammo_red_bg"
		"teambg_2_lodef"	"../hud/ammo_red_bg_lodef"
		"teambg_3"		"../hud/ammo_blue_bg"
		"teambg_3_lodef"	"../hud/ammo_blue_bg_lodef"			
	}
	"HudWeaponLowAmmoImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"HudWeaponLowAmmoImage"
		"xpos"			"3000"
		"ypos"			"0"
		"zpos"			"0"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
		"image"			"../hud/ammo_red_bg"
		"scaleImage"	"1"	
		"teambg_2"		"../hud/ammo_red_bg"
		"teambg_2_lodef"	"../hud/ammo_red_bg_lodef"
		"teambg_3"		"../hud/ammo_blue_bg"
		"teambg_3_lodef"	"../hud/ammo_blue_bg_lodef"			
	}
	"AmmoBG"
	{
		"ControlName"		"ScalableImagePanel"
		"fieldName"		"AmmoBG"
		"xpos"		"10"
		"ypos"		"26"
		"zpos"		"2"
		"wide"		"90"
		"tall"		"37"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"image"			"replay/thumbnails/bg_black_duo"

		"src_corner_height"	"18"				
		"src_corner_width"	"20"
		"draw_corner_width"	"3"				
		"draw_corner_height" "3"	
		"scaleImage"		"1"
	}
	"TeamBG"
	{
		"ControlName"		"CTFImagePanel"
		"fieldName"		"TeamBG"
		"xpos"		"104"
		"ypos"		"26"
		"zpos"		"2"
		"wide"		"13"
		"tall"		"37"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"image"			"replay/thumbnails/bg_black_duo"

		"teambg_1"		"replay/thumbnails/bg_black_duo"
		"teambg_2"		"replay/thumbnails/bg_red_duo"
		"teambg_3"		"replay/thumbnails/bg_blue_duo"

		"src_corner_height"	"18"		
		"src_corner_width"	"20"
		"draw_corner_width"	"3"				
		"draw_corner_height" "3"	
		"scaleImage"		"1"
	}
	"LowLabel"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"LowLabel"
		"xpos"			"10"
		"ypos"			"0"
		"zpos"			"5"
		"wide"			"90"
		"tall"			"27"
		"visible"			"1"
		"enabled"			"1"
		"labelText"		"LOW"
		"textAlignment"	"center"	
		"font"			"Book23"
		"fgcolor"		"Blank"
	}
	"AmmoInClip"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoInClip"
		"font"			"DemiBold46"
		"fgcolor"		"Garm3nAmmo"
		"xpos"	"15"
		"ypos"	"16"
		"zpos"			"5"
		"wide"	"90" 
		"tall"	"50" 
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"west"
		"labelText"		"%Ammo%"
		
	}		
	"AmmoInClipShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoInClipShadow"
		"font"			"DemiBold48"
		"fgcolor"		"Blank"
		"xpos"	"3"
		"ypos"	"2"
		"zpos"			"4"
		"wide"	"100" 
		"tall"	"56" 
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"east"	
		"labelText"		"%Ammo%"
	}
	"AmmoInReserve"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoInReserve"
		"font"	"Book16"
		"fgcolor"		"Garm3nAmmoRes"
		"xpos"	"34"
		"ypos"			"18"
		"zpos"			"5"
		"wide"			"61"
		"tall"			"34"
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"east"
		"labelText"		"%AmmoInReserve%"
	}		
	"AmmoInReserveShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoInReserveShadow"
		"font"	"Book34"
		"fgcolor"		"Blank"
		"xpos"	"105"
		"ypos"			"10"
		"zpos"			"4"
		"wide"			"120"
		"tall"			"42"
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"west"
		"labelText"		"%AmmoInReserve%"
	}
	"AmmoNoClip"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoNoClip"
		"font"			"DemiBold46"
		"fgcolor"		"Garm3nAmmo"
		"xpos"	"10"
		"ypos"	"16"
		"zpos"			"5"
		"wide"	"90" 
		"tall"	"50" 
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"center"
		"labelText"		"%Ammo%"
		
	}	
	"AmmoNoClipShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"AmmoNoClipShadow"
		"font"			"DemiBold48"
		"fgcolor"		"Blank"
		"xpos"	"69"
		"ypos"	"2"
		"zpos"			"4"
		"wide"	"100" 
		"tall"	"56" 
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"west"		
		"labelText"		"%Ammo%"
	}
}
