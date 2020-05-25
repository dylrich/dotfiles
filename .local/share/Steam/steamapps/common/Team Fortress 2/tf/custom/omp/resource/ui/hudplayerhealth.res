"Resource/UI/HudPlayerHealth.res"
{	
	// player health data
	"HudPlayerHealth"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"HudPlayerHealth"
		"xpos"			"c-232"	
		"ypos"			"c54"
		"zpos"			"2"
		"wide"			"132"
		"tall"			"132"
		"visible"		"1"
		"enabled"		"1"	
		"HealthBonusPosAdj"	"35"
		"HealthDeathWarning"	"0.49"
		"HealthDeathWarningColor"	"HUDDeathWarning"
		
		"xpos_minmode"	"c-142"
		"ypos_minmode"	"c37"
		"wide_minmode"	"92"
		"tall_minmode"	"92"
		"HealthBonusPosAdj_minmode"	"20"
	}	
	"PlayerStatusHealthImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImage"
		"ypos"			"0"
		"zpos"			"4"
		"wide"			"0"
		"tall"			"0"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	

		// omp -- fix positioning bud introduced by valve with the vaccinator.
		// the xpos value of status icons is now ignored, and they are placed
		// a certain offset away from the health image. therefore, we place
		// the image in a convenient location, and make it invisible.
		"xpos"			"39"
		"xpos_minmode"	"23"
		"alpha"			"0"
	}		
	"PlayerStatusHealthImageBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImageBG"
		"xpos"			"9999"
		"ypos"			"9999"
		"zpos"			"3"
		"wide"			"55"
		"tall"			"55"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/health_bg"
		"scaleImage"	"1"	
	}	
	"PlayerStatusHealthBonusImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthBonusImage"
		"xpos"			"26"
		"ypos"			"26"
		"zpos"			"2"
		"wide"			"80"
		"tall"			"80"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/health_over_bg"
		"scaleImage"	"1"	
		
		"xpos_minmode"	"20"
		"ypos_minmode"	"20"
		"wide_minmode"	"52"
		"tall_minmode"	"51" // omp -- -1 alignment fix.
	}
	"PlayerStatusHealthValue"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"PlayerStatusHealthValue"
		"xpos"			"0"
		"ypos"			"37" // omp -- -9 Mac fix.
		"zpos"			"5"
		"wide"			"130"
		"tall"			"56" // omp -- +18 Mac fix.
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%Health%"
		"textAlignment"	"center"	
		"font"			"FuturaHeavy56"
		"fgcolor"		"OmpHP"

		"xpos_minmode"	"0"
		"ypos_minmode"	"27" // omp -- -6 Mac fix.
		"wide_minmode"	"91"
		"tall_minmode"	"37" // omp -- +12 Mac fix.
		"font_minmode"	"FuturaHeavy36"
	}								
	"PlayerStatusHealthValueShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"PlayerStatusHealthValueShadow"
		"xpos"			"2"
		"ypos"			"39"
		"zpos"			"5"
		"wide"			"130"
		"tall"			"56"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%Health%"
		"textAlignment"	"center"	
		"font"			"FuturaHeavy56"
		"fgcolor"		"OmpShadow"
		
		"xpos_minmode"	"1"
		"ypos_minmode"	"28"
		"wide_minmode"	"91"
		"tall_minmode"	"37"
		"font_minmode"	"FuturaHeavy36"
	}
	"PlayerStatusBleedImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusBleedImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/bleed_drop"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatusHookBleedImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHookBleedImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/bleed_drop_grapple"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatusGasImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusGasImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/covered_in_gas"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatusSlowed"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusSlowed"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/slowed"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}	
	"PlayerStatusMilkImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusMilkImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/bleed_drop"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatusMarkedForDeathImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusMarkedForDeathImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/marked_for_death"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatusMarkedForDeathSilentImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusMarkedForDeathSilentImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/marked_for_death"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_MedicUberBulletResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicUberBulletResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_bullet_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_MedicUberBlastResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicUberBlastResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_explosion_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_MedicUberFireResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicUberFireResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_fire_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}

	"PlayerStatus_MedicSmallBulletResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicSmallBulletResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_bullet_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_MedicSmallBlastResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicSmallBlastResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_explosion_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_MedicSmallFireResistImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_MedicSmallFireResistImage"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_fire_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	

	"PlayerStatus_WheelOfDoom"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_WheelOfDoom"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../signs/death_wheel_whammy"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}

	"PlayerStatus_SoldierOffenseBuff"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_SoldierOffenseBuff"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_bullet_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}

	"PlayerStatus_SoldierDefenseBuff"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_SoldierDefenseBuff"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_bullet_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}

	"PlayerStatus_SoldierHealOnHitBuff"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_SoldierHealOnHitBuff"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../HUD/defense_buff_bullet_blue"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"23"
		"tall_minmode"	"23"
	}
	"PlayerStatus_Parachute"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_Parachute"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"0"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			""
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	
	"PlayerStatus_RuneStrength"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneStrength"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_strength_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneHaste"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneHaste"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_haste_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneRegen"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneRegen"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_regen_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneResist"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneResist"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_resist_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneVampire"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneVampire"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_vampire_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	
	"PlayerStatus_RunePrecision"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RunePrecision"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_precision_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneAgility"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneAgility"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_agility_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneKnockout"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneKnockout"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_Knockout_hud"
		"fgcolor"		"255 255 255 255"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	
	"PlayerStatus_RuneKing"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneKing"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_king_hud"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RunePlague"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RunePlague"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_plague_hud"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
	"PlayerStatus_RuneSupernova"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatus_RuneSupernova"
		"xpos"			"50"
		"ypos"			"90"
		"zpos"			"7"
		"wide"			"31"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../Effects/powerup_supernova_hud"
		"fgcolor"		"TanDark"
		
		"xpos_minmode"	"34"
		"ypos_minmode"	"60"
		"wide_minmode"	"24"
		"tall_minmode"	"24"
	}
}
