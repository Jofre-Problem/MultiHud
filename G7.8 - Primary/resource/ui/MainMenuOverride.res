#base "../../ui_overrides/resource/firstrun/s_border.res"
#base "../#jofre/motd-list.res"
#base "../#jofre/efecto-optico.res"
#base "../#jofre/motd-code.res"
#base "../#jofre/training maps.txt"
#base "../#jofre/multi_bg.res"
// User's custom background properties
#base "MainMenuBackground.res"

// Base backround properties, overriden by ^
#base "MainMenuBackgroundDefault.res"

"Resource/UI/MainMenuOverride.res"
{
	"MainMenuOverride"
	{
		FieldName				"MainMenuOverride"
		visible				1
		enabled				1
		xPos					0
		yPos					0
		zPos					0
		wide					f0
		tall					480
		
		update_url				"http://store.steampowered.com/news/?filter=updates&appids=440"
		blog_url				"http://www.teamfortress.com/"
		
		button_x_offset			-285
		button_y				120
		button_y_delta			5
		
		"button_kv"
		{
			xPos					0
			yPos					150
			wide					250
			tall					26
			visible				1

			"SubButton"
			{
				ControlName				CExImageButton
				FieldName				"SubButton"
				xPos					0
				yPos					0
				wide					f0
				tall					f0
				visible				1
				enabled				1
				textInsetX				25
				font					"HudFontSmallBold"
				textAlignment			west
				
				sound_depressed			"UI/buttonclick.wav"
				sound_released			"UI/buttonclickrelease.wav"
			}		
		}
		
		"SaxxySettings"		// idk better leave it
		{
			xPos					0
			yPos					0
			zPos					-101		
			wide					f0
			tall					480
			visible				1
			enabled				1
			
			flashbounds_x			50
			flashbounds_y			65
			flashbounds_w			250
			flashbounds_h			120
			
			flashstartsize_min		8
			flashstartsize_max		12
			
			flash_maxscale			4
			
			flash_lifelength_min		.1
			flash_lifelength_max		.2
			
			curtain_anim_duration		4.0
			curtain_open_time			2.8
			flash_start_time			4.0
			
			initial_freakout_duration	15.0
			clap_sound_duration		10.0
			
			"CameraFlashSettings"
			{
				visible				1
				enabled				1
				tileImage				0
				scaleImage				1
				zPos					9
			}
		}
	}
	"MMBackgroundPanel"
	{
		"zpos"			"-300"
		"enabled"		"1"
	}

	// Play button, the "queued for" spinner and party members in
	// 	=> resource\ui\MatchMakingDashboard.res

	// #region DashboardDimmer 

	// This is the element that darkens menu when matchmaking mode selection (or console) is open
	// and closes the matchmaking menu when clicked.
	// For any changes to take place you need to reload the hud after it's been first opened.
	// To reload it on launch this has to be exec'd:
	//  wait 5; showconsole; wait; incrementvar mat_antialias -100 100 1; hideconsole; wait 5; incrementvar mat_antialias -100 100 -1

	"DashboardDimmer"
	{
		fieldName				"DashboardDimmer"
		xpos					0
		ypos					0
		wide					0
		tall					0			// by default gap at the bottom 
		zPos					1000			// default 1000
		paintbackground			0			// make it transparent
		pin_to_sibling			"PartyAnchor"
	}

	// Buttons should have zPos higher than DashboardDimmer,
	// that way they are still clickable with matchmaking menu open.

	// #endregion

	// #region RIGHT BAR 

	"RightBar"				// background for the left side buttons
	{
		ControlName				ImagePanel
		FieldName				"RightBar"
		xPos					rs1
		yPos					0	
		zPos					1010
		wide					42
		tall					480
		fillColor				"MenuSideBarBg"
		mouseInputEnabled			0			// mouse input passes though to panels below
	}

	// Find a Game button positioned so it looks like it's here
	// 	=> resource\ui\MatchMakingDashBoard.res

	"BrowseServers"			// open server browser; other buttons pinned to this
	{
		ControlName				CExButton
		FieldName				"BrowseServers"
		xPos					0
		yPos					-42			// offset from pinned position
		zPos					1050
		wide					42
		tall					o1

		labelText				","
		font					"Symbols 30"
		textAlignment			center
		
		command				"OpenServerBrowser"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintBackground			0

		pin_to_sibling 			"RightBar"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_TOPLEFT
	}
	
	"CreateServer"			// open create server window; on top of ServersButton
	{
		ControlName				CExButton
		FieldName				"CreateServer"
		xPos					-16
		yPos					-16
		zPos					1051
		wide					16
		tall					o1
		
		labelText				"B"
		font					"Symbols 16"
		textAlignment			center
		
		command				"OpenCreateMultiplayerGameDialog"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintBackground			0

		pin_to_sibling 			"BrowseServers"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_TOPRIGHT
	}

	"SeparatorLine-Play"				// visual
	{
		ControlName				ImagePanel
		FieldName				"SeparatorLine-Play"
		xPos					0
		yPos					0
		zPos					1011
		wide					36
		tall					1
		
		fillColor 				"MenuSideBarFg"

		pin_to_sibling 			"BrowseServers"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_BOTTOM
	}
	
	"OpenBackpack"			// open backpack
	{
		ControlName				CExButton
		FieldName				"OpenBackpack"
		xPos					0
		yPos					1
		zPos					1050
		wide					42
		tall					o1
		
		labelText				"F"
		font					"Symbols 28"
		textAlignment			center
		
		command				"engine open_charinfo_backpack; hideconsole"		// open backpack directly (default engine open_charinfo)
																// also close to prevent weird clipping
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintBackground			0

		pin_to_sibling 			"BrowseServers"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"ChangeOptions"		// open options window
	{
		ControlName				CExButton
		FieldName				"ChangeOptions"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1
		
		labelText				"X"
		font					"Symbols 27"
		textAlignment			center
		
		command				"OpenOptionsDialog"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintBackground			0

		pin_to_sibling 			"OpenBackpack"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	"ToggleConsole"		// toggle console
	{
		ControlName				CExButton
		FieldName				"ToggleConsole"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1
		
		labelText				"C"
		font					"Symbols 26"
		textAlignment			center
		
		command				"engine con_enable 1; toggleconsole"		// making sure it's enabled

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintBackground			0

		pin_to_sibling 			"ChangeOptions"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	"SeparatorLine-InGame"				// visual
	{
		ControlName				ImagePanel
		FieldName				"SeparatorLine-InGame"
		xPos					0
		yPos					0
		zPos					1011
		wide					36
		tall					1
		
		fillColor 				"MenuSideBarFg"

		pin_to_sibling 			"ToggleConsole"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_BOTTOM
	}

	// #region Only In-Game 

	// Next are in game buttons (OnlyInGame 1)
	// They need to be like this for the OnlyInGame 1 to work (there may be another way idk)
	// command, label (not labelText ?) and OnlyInGame defined in => resource\GameMenu.res

	"CallVote"			// call a vote
	{
		ControlName				EditablePanel
		FieldName				"CallVote"
		xPos					0
		yPos					1
		zPos					1050
		wide					42
		tall					o1
		
		pin_to_sibling 			"ToggleConsole"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT

		"SubButton"
		{
			ControlName				CExImageButton
			fieldName				"SubButton"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1

			font					"Symbols 28"
			textAlignment			center
			
			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
							
			defaultFgColor_override		"ButtonNormalBg"
			armedFgColor_override		"ButtonHoverBg"

			paintbackground			0
		}
	}

	"MutePlayer"			// open the menu to mute players
	{
		ControlName				EditablePanel
		FieldName				"MutePlayer"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1
		
		pin_to_sibling 			"CallVote"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT

		"SubButton"
		{
			ControlName				CExImageButton
			fieldName				"SubButton"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1

			font					"Symbols 27"
			textAlignment			center
			
			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
						
			defaultFgColor_override		"ButtonNormalBg"
			armedFgColor_override		"ButtonHoverBg"

			paintbackground			0
		}
	}
	
	"ReportPlayer"			// open the menu to report players
	{
		ControlName				EditablePanel
		FieldName				"ReportPlayer"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1
		
		pin_to_sibling 			"MutePlayer"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT

		"SubButton"
		{
			ControlName				CExImageButton
			fieldName				"SubButton"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1

			font					"Symbols 26"
			textAlignment			center
			
			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
						
			defaultFgColor_override		"ButtonNormalBg"
			armedFgColor_override		"ButtonHoverBg"

			paintbackground			0
		}
	}

	"Disconnect"			// disconnet from the current server
	{
		ControlName				EditablePanel
		FieldName				"Disconnect"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1
		
		pin_to_sibling			"Quit"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_TOPLEFT

		"SubButton"
		{
			ControlName				CExImageButton
			fieldName				"SubButton"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1

			font					"Symbols 29"
			textAlignment			center
			
			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
						
			defaultFgColor_override		"ButtonNormalFg"
			armedFgColor_override		"ButtonHoverFg"

			paintbackground			0
		}
	}

	// #endregion

	"Quit"				// when you don't want to play anymore
	{
		ControlName				CExButton
		FieldName				"Quit"
		xPos					0
		yPos					0						// at the bottom of the screen
		zPos					1050
		wide					42
		tall					o1
		
		labelText				")"
		font					"Symbols 32"
		textAlignment			center
		
		command				"engine replay_confirmquit"		// prompts player if he has unsaved replays before closing the game

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonWarningFg"

		paintBackground			0

		pin_to_sibling			"RightBar"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	// #endregion

	// #region LEFT BAR 

	"LeftBar"
	{
		ControlName				ImagePanel
		FieldName				"LeftBar"
		xPos					0
		yPos					0
		zPos					1010
		wide					42
		tall					480
		fillColor				"MenuSideBarBg"
		mouseInputEnabled			0
	}

	"RankModelPanel"			// contains rank medal model; can't click it because CycleRankTypeButton is on top
	{
		ControlName				CPvPRankPanel
		FieldName				"RankModelPanel"
		xPos					0
		yPos					-20
		zPos					1090
		wide					80					// needs top be bigger to not cut off spark particles
		tall					o1

		matchgroup				MatchGroup_Casual_12v12		// MatchGroup_Ladder_6v6 ?
		show_progress			0					// check out!

		pin_to_sibling			"LeftBar"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP

		// => resource\ui\PvPRankPanel.res
	}

	"CycleRankTypeButton"		// toggle between casual/comp medal (RankModelPanel) and stats (RankPanel)
	{
		ControlName				CExButton
		FieldName				"CycleRankTypeButton"
		xpos					0
		ypos					-42
		zpos					2000
		wide					42
		tall					42
		alpha					0

		command				"open_rank_type_menu"
		actionsignallevel			1
		
		pin_to_sibling			"LeftBar"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_TOPLEFT
	}

	"FriendsContainer"		// online friends list
	{
		ControlName				EditablePanel
		FieldName				"FriendsContainer"
		xPos					0
		yPos					-112  //-74
		zPos					1050
		wide					42
		tall					308 //346

		pin_to_sibling			"LeftBar"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP

		"Icon"				// visual
		{
			ControlName				CExLabel
			FieldName				"Icon"
			xPos					0
			yPos					0
			wide					f0
			tall					28
			proportionalToParent		1

			font					"Symbols 22"
			labelText				"Y"
			textAlignment			center

			fgcolor_override			"MenuSideBarFg"
			paintBackground			0
		}

		"TopLine"				// visual
		{
			ControlName				ImagePanel
			FieldName				"TopLine"
			xPos					cs-0.5
			yPos					28
			wide					f6
			tall					1
			proportionalToParent		1
			
			fillColor 				"MenuSideBarFg"
		}

		"SteamFriendsList"		// contains the profiles
		{
			ControlName				CSteamFriendsListPanel
			FieldName				"SteamFriendsList"
			xPos					cs-0.5
			yPos					31
			wide					38
			tall					f33
			proportionalToParent		1

			columns_count			1
			inset_x				3			// padding
			inset_y				0
			row_gap				2			// row spacing
			column_gap				0
			restrict_width			0			// check out!

			"friendpanel_kv"			// template for each friend
			{
				wide					f6		// inset_x * 2
				tall					o1.24
				proportionalToParent		1

				// => resource\ui\SteamFriendPanel.res
			}

			"ScrollBar"				// scrollbar style
			{
				ControlName				ScrollBar
				FieldName				"ScrollBar"
				xPos					0
				yPos					0
				tall					f0
				wide					3
				zPos					20
				proportionalToParent		1
				nobuttons				1			// hide arrow buttons

				"Slider"				// the moving thingy
				{
					fgcolor_override			"MenuSideBarFg"
				}
			}
		}

		"BottomLine"			// visual
		{
			ControlName				ImagePanel
			FieldName				"BottomLine"
			xPos					cs-0.5
			yPos					rs1
			wide					f6
			tall					1
			proportionalToParent		1
			
			fillColor 			"MenuSideBarFg"
		}
	}

	// #region Small Buttons 

	// Achievements in the botom right corner, others pinned from there
	// ╸┑
	// ╸┑
	// ╸×

	"OpenAchievements"		// open achievements window
	{
		ControlName				CExButton
		FieldName				"OpenAchievements"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"L"
		font					"Symbols 17"
		textAlignment			west
		textInsetX				7
		
		command				"OpenAchievementsDialog"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0

		pin_to_sibling			"LeftBar"
		pin_corner_to_sibling		PIN_BOTTOMRIGHT
		pin_to_sibling_corner		PIN_BOTTOMRIGHT
	}


	"OpenAdvancedOptions"		// open advanced options
	{
		ControlName				CExButton
		FieldName				"OpenAdvancedOptions"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"I"
		font					"Symbols 16"
		textAlignment			east
		textInsetX				3
		
		command				"opentf2options"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0
		
		pin_to_sibling 			"OpenAchievements"
		pin_corner_to_sibling		PIN_TOPRIGHT
		pin_to_sibling_corner		PIN_TOPLEFT
	}


	"WatchTwitchStreams"		// open streams window
	{
		ControlName				CExButton
		FieldName				"WatchTwitchStreams"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"x"
		font					"Symbols 16"
		textAlignment			center
		textInsetX				7
		
		command				"engine statsummary; hideconsole"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0
		
		pin_to_sibling 			"OpenAchievements"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_TOPLEFT
	}


	"OpenStore"				// open Mann Co. Store
	{
		ControlName				CExButton
		FieldName				"OpenStore"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"E"
		font					"Symbols 16"
		textAlignment			east
		textInsetX				3
		
		command					"engine open_store"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0
		
		pin_to_sibling 			"WatchTwitchStreams"
		pin_corner_to_sibling		PIN_TOPRIGHT
		pin_to_sibling_corner		PIN_TOPLEFT
	}


	"OpenReplays"			// open replay window
	{
		ControlName				CExButton
		FieldName				"OpenReplays"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"D"
		font					"Symbols 16"
		textAlignment			west
		textInsetX				7
		
		command				"engine replay_reloadbrowser"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0

		pin_to_sibling 			"WatchTwitchStreams"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_TOPLEFT
	}


	"OpenContracker"			// open contracker
	{
		ControlName				CExButton
		FieldName				"OpenContracker"
		xPos					0
		yPos					0
		zPos					1050
		wide					21
		tall					o1

		labelText				"1"
		font					"Symbols 16"
		textAlignment			east
		textInsetX				3
		
		command				"questlog"

		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalBg"
		armedFgColor_override		"ButtonHoverBg"
	
		paintBackground			0

		pin_to_sibling 			"OpenReplays"
		pin_corner_to_sibling		PIN_TOPRIGHT
		pin_to_sibling_corner		PIN_TOPLEFT
	}

	// #endregion

	// #endregion

	// #region OTHER STUFF

	"BackgroundPanel"
	{
		ControlName				EditablePanel
		fieldName				"BackgroundPanel"
		xPos					0
		yPos					0
		zPos					1002
		wide					f0
		tall					480
		mouseInputEnabled			0

		"Full"
		{
			ControlName				ImagePanel
			fieldName				"Full"
			xpos					0
			ypos					0
			wide					f0
			tall					480
			scaleimage				1
		}

		"Left"
		{
			ControlName				ImagePanel
			fieldName				"Left"
			xpos					0
			ypos					0
			wide					p0.5
			tall					480
			scaleimage				1
		}

		"Right"
		{
			ControlName				ImagePanel
			fieldName				"Right"
			xpos					c0
			ypos					0
			wide					p0.5
			tall					480
			scaleimage				1
		}

		"TopLeft"
		{
			ControlName				ImagePanel
			fieldName				"TopLeft"
			xpos					0
			ypos					0
			wide					p0.5
			tall					240
			scaleimage				1
		}

		"TopRight"
		{
			ControlName				ImagePanel
			fieldName				"TopRight"
			xpos					c0
			ypos					0
			wide					p0.5
			tall					240
			scaleimage				1
		}

		"BottomLeft"
		{
			ControlName				ImagePanel
			fieldName				"BottomLeft"
			xpos					0
			ypos					240
			wide					p0.5
			tall					240
			scaleimage				1
		}

		"BottomRight"
		{
			ControlName				ImagePanel
			fieldName				"BottomRight"
			xpos					c0
			ypos					240
			wide					p0.5
			tall					240
			scaleimage				1
		}
	}

	"ClickAwayPanel"  		// catches when player clicks away from something; needed to close context menus
	{
		ControlName				CExButton
		FieldName				"ClickAwayPanel"
		xPos					0
		yPos					0
		zPos					999				// below DashboardDimmer
		wide					f0
		tall					480
		alpha					0
	}



	
	"Notifications_ShowButtonPanel"	// notification alert
	{
		ControlName				EditablePanel
		FieldName				"Notifications_ShowButtonPanel"
		xPos					0
		yPos					0
		zPos					1050
		wide					42
		tall					o1

		paintBackground			0
		paintBorder				0

		pin_to_sibling			"RightBar"
		pin_corner_to_sibling		PIN_BOTTOMRIGHT
		pin_to_sibling_corner		PIN_BOTTOMLEFT


		"Notifications_ShowButtonPanel_SB"		// clickable button with the bell animation
		{
			ControlName				CExImageButton
			fieldName				"Notifications_ShowButtonPanel_SB"
			xpos					cs-0.5
			ypos					rs1
			zpos					1
			wide					f0
			tall					f0
			proportionaltoparent		1

			Command				"noti_show"
			actionsignallevel			2

			labelText				""
			
			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
			sound_armed				"UI/buttonrollover.wav"
			
			paintbackground			0
			
			image_drawcolor			"255 255 255 100"			// scheme colors don't work
			image_armedcolor			"255 200  55 150"
			
			"SubImage"
			{
				ControlName				ImagePanel
				fieldName				"SubImage"
				xpos					cs-0.5
				ypos					cs-0.5
				wide					p0.9
				tall					o1
				proportionaltoparent		1
				image					"replay/thumbnails/mainmenu/notification_bell"
				scaleImage				1
			}				
		}


		"NotificationCountBg"	// circle background for the count label
		{
			ControlName				ImagePanel
			fieldName				"NotificationCountBg"
			xpos					cs-0.5
			ypos					cs-0.5
			zpos					0
			wide					p0.9
			tall					o1
			proportionaltoparent		1

			image					"replay/thumbnails/mainmenu/notification_bell_message"
			drawcolor				"ButtonHoverBg"
			scaleImage				1
		}


		"NotificationCountLabel"
		{
			ControlName				CExLabel
			fieldName				"NotificationCountLabel"
			xpos					0
			ypos					0
			zpos					2
			wide					16
			tall					o1
			proportionalToParent		1
			mouseInputEnabled			0

			font					"IntroMenuCaption"
			labelText				"%noticount%"
			textAlignment			center
			textInsetY				-2

			fgcolor_override			"FontNormal"
			paintBackground			0

			pin_to_sibling			"NotificationCountBg"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_TOPRIGHT
		}
	}

	
	"Notifications_Panel"
	{
		ControlName				EditablePanel
		FieldName				"Notifications_Panel"
		xPos					-2
		yPos					-2
		zPos					2000
		wide					210
		tall					80
		visible				0
		
		paintBackground			1
		bgcolor_override			"MenuPanelBg"
		
		pin_to_sibling 			"Notifications_ShowButtonPanel"
		pin_corner_to_sibling		PIN_BOTTOMRIGHT
		pin_to_sibling_corner		PIN_BOTTOMRIGHT
		
		"Notifications_CloseButton"
		{
			ControlName				CExButton
			FieldName				"Notifications_CloseButton"
			xPos					rs1-3
			yPos					3
			zPos					10
			wide					16
			tall					16
			proportionalToParent		1

			font					"Symbols 16"
			labeltext				"W"
			textAlignment			center
			actionsignallevel			2

			Command				"noti_hide"

			sound_depressed			"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
		
			defaultFgColor_override		"ButtonNormalFg"
			armedFgColor_override		"ButtonNormalFg"

			paintBackground			1
			
			defaultBgColor_override		"MenuPanelBg"
			armedBgColor_override		"ButtonHoverBg"
		}		
	
		"Notifications_TitleLabel"
		{
			ControlName				CExLabel
			FieldName				"Notifications_TitleLabel"
			xPos					8
			yPos					3
			wide					f30
			tall					16
			proportionalToParent		1

			font					"ControllerHintText"
			labelText				"%notititle%"
			textAlignment			west
			wrap					0
			textInsetY				2

			fgcolor				"MenuPanelFg"
			paintBackground			0
		}
		
		"Notifications_Scroller"
		{
			ControlName				ScrollableEditablePanel
			FieldName				"Notifications_Scroller"
			xPos					3
			yPos					22
			wide					f3
			tall					f25
			proportionalToParent		1

			fgcolor_override			"117 107 94 255"
			
			"Notifications_Control"		// width harcoded as parent - scrollbar
			{
				ControlName				CMainMenuNotificationsControl
				FieldName				"Notifications_Control"
				xPos					0
				yPos					0
				tall					f0
				proportionalToParent		1

				// => resource\ui\econ\NotificationToastControl.res
			}

			"VerticalScrollBar"
			{
				xpos					rs1-1
				wide					2
				proportionalToParent		1
			}
		}
	}


	"mouseoveritempanel"		// TODO
	{
		ControlName				CItemModelPanel
		FieldName				"mouseoveritempanel"
		xPos					c-70
		yPos					270
		zPos					100000
		wide					300
		tall					300
		visible				0
		bgcolor_override			"0 0 0 0"
		noitem_textcolor			"White"
		paintBackgroundType		2
		paintBorder				1
		border				"WhiteTransparent50"
		
		text_yPos				20
		text_center				1
		model_hide				1
		resize_to_text			1
		padding_height			15
		
		"attriblabel"
		{
			font					"ItemFontAttribLarge"
			xPos					0
			yPos					30
			zPos					2
			wide					140
			tall					60
			autoResize				0
			visible				1
			enabled				1
			labelText				"%attriblist%"
			textAlignment			center
			fgcolor				"White"
			centerwrap				1
		}
	}

	
	"TooltipPanel"		// when hovering a element that has tooltipText
	{
		ControlName				EditablePanel
		FieldName				"TooltipPanel"
		xPos					0
		yPos					0
		zPos					10000
		wide					150
		tall					30
		visible				0
		
		paintBackground			1
		bgcolor_override			"TooltipBg"
		paintBorder				0
		
		"TipLabel"
		{
			ControlName				CExLabel
			FieldName				"TipLabel"
			xPos					20
			yPos					0
			zPos					2
			wide					140
			tall					30
			visible				1
			enabled				1

			auto_wide_tocontents 		1

			font					"ItemFontAttribLarger"
			labelText				"%tiptext%"
			textAlignment			center
			
			fgcolor				"TooltipFg"
			paintBackground			0
		}
	}

	
	"NoGCMessage"		// TODO
	{
		ControlName				Label
		FieldName				"NoGCMessage"
		xPos					rs1
		yPos					5
		zPos					5
		wide					p0.5
		tall					40
		proportionalToParent		1
		visible				1
		alpha					125
		mouseInputEnabled			0
		
		font					"ControllerHintText"
		fgcolor_override			"ButtonNormalFg"
		labelText				"Lost connection to the steam server"
		textAlignment			east
		allCaps				1
		wrap					1		
	}



	// #endregion

	// #region DISABLED

	"QuestLogButton"
	{
		visible 			0
		enabled			0
	}
	"EventPromo"
	{
		visible 			0
		enabled			0
		wide				0
		tall				0
	}
	"MOTD_ShowButtonPanel"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"MOTD_ShowButtonPanel"
		"xpos"			"5"
		"ypos"			"80"
		"zpos"			"1095"
		"wide"			"32"
		"tall"			"32"
		"autoResize"	"0"
		"pinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"

		"MOTD_ShowButtonPanel_SB"
		{
			"ControlName"	"CExImageButton"
			"fieldName"		"MOTD_ShowButtonPanel_SB"
			"xpos"			"0"
			"ypos"			"0"
			"zpos"			"1"
			"wide"			"32"
			"tall"			"32"
			"autoResize"	"0"
			"pinCorner"		"3"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"	"0"
			"labelText"		""
			"font"			"HudFontSmallestBold"
			"textAlignment"	"center"
			"dulltext"		"0"
			"brighttext"	"0"
			"default"		"1"

			"actionsignallevel" "2"
			"Command"		"motd_show"

			"sound_depressed"	"UI/buttonclick.wav"
			"sound_released"	"UI/buttonclickrelease.wav"
			"paintbackground" "0"
			"image_drawcolor"	"235 226 202 255"
			"image_armedcolor"	"ButtonHoverBg"

			"SubImage"
			{
				"ControlName"	"ImagePanel"
				"fieldName"		"SubImage"
				"xpos"			"0"
				"ypos"			"0"
				"zpos"			"1"
				"wide"			"32"
				"tall"			"32"
				"visible"		"1"
				"enabled"		"1"
				"image"			"replay/thumbnails/jp_hat"
				"scaleImage"	"1"
			}
		}
	}	
	"EfectoOptico"
	{
		"xpos"			"41"
		"wide"			"f82"		
	}			

		
	"SafeMode"
	{
		"ControlName"	"EditablePanel"
		"fieldname"		"SafeMode"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"1000"
		"wide"			"f42"
		"tall"			"480"
		"visible"		"1"
		"enabled"		"1"

	
		"RankPanel"				// player's name, casual/competitive label, level/rank and stats
		{
			ControlName				CPvPRankPanel
			FieldName				"RankPanel"
			xPos					41
			yPos					0
			zPos					1014
			wide					f82
			tall					480
			mouseInputEnabled			0					// mouse input passes though to panels below

			matchgroup				MatchGroup_Casual_12v12		// check out!
			show_model				0					// check out!
			show_type				1					// check out!
		
			// => resource\ui\PvPRankPanel.res BgPanel
		}		
	"NameEntry"
	{
		"ControlName"		"CCvarTextEntry"
		"fieldName"		"NameEntry"
		"xpos"		"0"
		"ypos"		"180"
		"wide"		"f0"
		"tall"		"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"textHidden"		"0"
		"editable"		"1"
		"maxchars"		"-1"
		"border"		"BlackTransparent30"
	}	
		"Chibi"
		{
			"ControlName""ImagePanel"
			"fieldName""Chibi"
			"xpos"			"c-17"
			"ypos"			"c-209"
			"zpos""79"
			"wide""35"
			"tall""35"
			"visible""1"
			"enabled""1"
			"scaleImage""1"
			"image""replay/thumbnails/monika_c"
			"fgcolor"			"TanDark"
		}	
		"Safenchor"				// background for the left side buttons
		{
			ControlName				ImagePanel
			FieldName				"Safenchor"
			"xpos"			"42"
			"ypos"			"0"
			"zpos"			"80"
			"wide"			"0"
			"tall"			"0"
			fillColor				"Nada"
			mouseInputEnabled			0			// mouse input passes though to panels below
		}	
		"PartyAnchor"				// background for the left side buttons
		{
			ControlName				ImagePanel
			FieldName				"PartyAnchor"
			"xpos"			"c-25"
			"ypos"			"c-179"
			"zpos"			"80"
			"wide"			"45"
			"tall"			"45"
			fillColor				"Blanco"
			mouseInputEnabled			0			// mouse input passes though to panels below
		}		
		"PartySlot0"
		{
			"ControlName""CDashboardPartyMember"
			"fieldName""PartySlot0"
			"xpos"			"0"
			"ypos"			"0"
			"zpos"			"100"
			"wide"			"45"
			"tall"			"45"
			"proportionaltoparent"			"1"
			"mouseinputenabled"			"1"
			"keyboardinputenabled"		"0"
			"party_slot"				"0"
			pin_to_sibling	"PartyAnchor"
		}
		"Background"
		{
			"ControlName"	"EditablePanel"
			"fieldname"		"Background"
			"xpos"			"0"
			"ypos"			"20"
			"zpos"			"0"
			"wide"			"260"
			"tall"			"p0.88"
			"visible"		"1"
			"PaintBackgroundType"	"0"
			"proportionaltoparent"	"1"

			"paintborder"	"1"
			"border"		"noborder"

			"TitleLabel"
			{
				"ControlName"	"CExLabel"
				"fieldName"		"TitleLabel"
				"xpos"			"9999"
			}
	
			"SaveSettingsButton"
			{
				"ControlName"	"CExImageButton"
				"fieldName"		"SaveSettingsButton"
				"xpos"			"9999"
			}

	
			"LeaveSafeModeButton"
			{
				"ControlName"	"CExButton"
				"fieldName"		"SubButton"
				"xpos"			"9999"
			}

			"Explanation"
			{
				"ControlName"			"Label"
				"fieldName"				"Explanation"
				"xpos"			"9999"
			}
		}
	}
	"StreamListPanel"
	{
		ControlName					CTFStreamListPanel
		FieldName					"StreamListPanel"
		xPos							10
		yPos							0
		zPos							1090
		wide							300
		tall							300
		visible						0
		
		paintBackground			1
		bgcolor_override			"MenuPanelBg"
		paintBorder					0
		
		pin_to_sibling					"LeftBar"
		pin_corner_to_sibling		PIN_CENTER_RIGHT
		pin_to_sibling_corner		PIN_CENTER_LEFT

		// => resource\ui\StreamListPanel.res
	}	
	// Background	
}