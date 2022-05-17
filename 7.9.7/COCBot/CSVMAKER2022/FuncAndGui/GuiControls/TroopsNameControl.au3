; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Troops Name Controls
; Description ...:
; Syntax ........:
; Parameters ....:
; Return values .:
; Author ........: ratakantez
; Modified ......: ratakantez (12th March 2022)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2022
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; =================================================================================================================================


Func CMBTroops_NameCOMBOBOX()
   Switch _GUICtrlComboBox_GetCurSel($CMBTroops_Name)
   Case 0
	  $TName = "Barb       "
	  $TType = "Army"
	  $LOGName = "Barbarian"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Barbarian.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 1
   Case 1
	  $TName = "SBarb      "
	  $TType = "Army"
	  $LOGName = "Super Barbarian"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SBarbarian.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 5
   case 2
	  $TName = "Arch       "
	  $TType = "Army"
	  $LOGName = "Archer"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Archer.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 1
   case 3
	  $TName = "SArch      "
	  $TType = "Army"
	  $LOGName = "Super Archer"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SArcher.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 12
   case 4
	  $TName = "Giant      "
	  $TType = "Army"
	  $LOGName = "Giant"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Giant.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 5
   case 5
	  $TName = "SGiant     "
	  $TType = "Army"
	  $LOGName = "Super Giant"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SGiant.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 10
   case 6
	  $TName = "Gobl       "
	  $TType = "Army"
	  $LOGName = "Goblin"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Goblin.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 1
   case 7
	  $TName = "SGobl      "
	  $TType = "Army"
	  $LOGName = "Sneaky Goblin"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SGoblin.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 3
   Case 8
	  $TName = "Wall       "
	  $TType = "Army"
	  $LOGName = "Wall Breaker"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\WallBreaker.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 2
   Case 9
	  $TName = "SWall      "
	  $TType = "Army"
	  $LOGName = "Super Wall Breaker"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SWallBreaker.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 8
   case 10
	  $TName = "Ball       "
	  $TType = "Army"
	  $LOGName = "Baloon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Baloon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 5
   case 11
	  $TName = "RBall      "
	  $TType = "Army"
	  $LOGName = "Rocket Baloon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\RBaloon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 8
   case 12
	  $TName = "Wiza       "
	  $TType = "Army"
	  $LOGName = "Wizard"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Wizard.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 4
   case 13
	  $TName = "SWiza      "
	  $TType = "Army"
	  $LOGName = "Super Wizard"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SWizard.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 10
   Case 14
	  $TName = "Heal       "
	  $TType = "Army"
	  $LOGName = "Healer"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Healer.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 14
   case 15
	  $TName = "Drag       "
	  $TType = "Army"
	  $LOGName = "Dragon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Dragon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 20
   case 16
	  $TName = "InfernoD   "
	  $TType = "Army"
	  $LOGName = "Inferno Dragon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\IDragon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 15
   case 17
	  $TType = "Army"
	  $TName = "SDrag      "
	  $LOGName = "Super Dragon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SuperDragon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 40
   case 18
	  $TName = "Pekk       "
	  $TType = "Army"
	  $LOGName = "P.E.K.K.A"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Pekka.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 25
   Case 19
	  $TName = "BabyD      "
	  $TType = "Army"
	  $LOGName = "Baby Dragon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\BabyDragon.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 10
   case 20
	  $TName = "Mine       "
	  $TType = "Army"
	  $LOGName = "Miner"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Miner.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 6
   case 21
	  $TName = "EDrag      "
	  $TType = "Army"
	  $LOGName = "Electro Dragon"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\EDrag.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 30
   case 22
	  $TName = "Yeti       "
	  $TType = "Army"
	  $LOGName = "Yeti"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Yeti.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 18
   case 23
	  $TName = "RDrag      "
	  $TType = "Army"
	  $LOGName = "Dragon Rider"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\DragonR.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 25
   Case 24
	  $TName = "Mini       "
	  $TType = "Army"
	  $LOGName = "Minion"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Minion.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 2
   Case 25
	  $TName = "SMini      "
	  $TType = "Army"
	  $LOGName = "Super Minion"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SMinion.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 12
   case 26
	  $TName = "Hogs       "
	  $TType = "Army"
	  $LOGName = "Hog Rider"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\HogRider.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 5
   case 27
	  $TName = "Valk       "
	  $TType = "Army"
	  $LOGName = "Valkyre"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Valkyre.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 8
   case 28
	  $TName = "SValk      "
	  $TType = "Army"
	  $LOGName = "Super Valkyre"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SValkyre.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 20
   Case 29
	  $TType = "Army"
	  $TName = "Gole       "
	  $LOGName = "Golem"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Golem.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 30
   case 30
	  $TType = "Army"
	  $TName = "Witc       "
	  $LOGName = "Witch"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Witch.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 12
   case 31
	  $TType = "Army"
	  $TName = "SWitc      "
	  $LOGName = "Super Witch"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SWitch.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 40
   case 32
	  $TType = "Army"
	  $TName = "Lava       "
	  $LOGName = "Lava Hound"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Lava.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 30
   case 33
	  $TType = "Army"
	  $TName = "IceH       "
	  $LOGName = "Ice Hound"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\IHound.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 40
   Case 34
	  $TType = "Army"
	  $TName = "Bowl       "
	  $LOGName = "Bowler"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Bowler.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 6
   Case 35
	  $TType = "Army"
	  $TName = "SBowl      "
	  $LOGName = "Super Bowler"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SBowler.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 30
   case 36
	  $TType = "Army"
	  $TName = "IceG       "
	  $LOGName = "Ice Golem"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\IceGolem.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 15
   case 37
	  $TType = "Army"
	  $TName = "Hunt       "
	  $LOGName = "Head Hunter"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Hunter.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
	  $CounterTroop_TroopSize = 6
   case 38
	  $TType = "Spell"
	  $TName = "LSpell     "
	  $LOGName = "Light Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\LSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 2
   Case 39
	  $TType = "Spell"
	  $TName = "HSpell     "
	  $LOGName = "Heal Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\HSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 2
   case 40
	  $TType = "Spell"
	  $TName = "RSpell     "
	  $LOGName = "Rage Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\RSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 2
   case 41
	  $TType = "Spell"
	  $TName = "JSpell     "
	  $LOGName = "Jump Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\JSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 2
   Case 42
	  $TType = "Spell"
	  $TName = "FSpell     "
	  $LOGName = "Freeze Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\FSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   case 43
	  $TType = "Spell"
	  $TName = "CSpell     "
	  $LOGName = "Clone Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\CSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 3
   case 44
	  $TType = "Spell"
	  $TName = "ISpell     "
	  $LOGName = "Invisibility Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\ISpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   case 45
		   $TType = "Spell"
	  $TName = "PSpell     "
	  $LOGName = "Poison Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\PSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   Case 46
	  $TType = "Spell"
	  $TName = "ESpell     "
	  $LOGName = "Earthquake Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\ESpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   case 47
	  $TType = "Spell"
	  $TName = "HaSpell    "
	  $LOGName = "Haste Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\HaSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   case 48
	  $TType = "Spell"
	  $TName = "SkSpell    "
	  $LOGName = "Skeleton Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SkSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   Case 49
	  $TType = "Spell"
	  $TName = "BtSpell    "
	  $LOGName = "Bat Spell"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\BtSpell.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSORSPELL')
	  OnAutoItExitRegister('OnAutoItExit')
	  If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 DisableBuildings()
	  EndIf
	  $CounterTroop_SpellSize = 1
   case 50
	  $TType = "Army"
	  $TName = "WallW      "
	  $LOGName = "Wall Wrecker"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\WallW.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 51
	  $TType = "Army"
	  $TName = "BattleB    "
	  $LOGName = "Battle Blimp"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\BattleB.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   Case 52
	  $TType = "Army"
	  $TName = "StoneS     "
	  $LOGName = "Stone Slamer"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\StoneS.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   Case 53
	  $TType = "Army"
	  $TName = "SiegeB     "
	  $LOGName = "Siege Barrack"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\SiegeB.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
   OnAutoItExitRegister('OnAutoItExit')
   Case 54
	  $TType = "Army"
	  $TName = "LogL       "
	  $LOGName = "Log Launcher"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\LogL.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   Case 55
	  $TType = "Army"
	  $TName = "FlameF     "
	  $LOGName = "Flame Flinger"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\FlameFlinger.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 56
	  $TType = "Army"
	  $TName = "King       "
	  $LOGName = "King"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\King.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 57
	  $TType = "Army"
	  $TName = "Queen      "
	  $LOGName = "Queen"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Queen.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 58
	  $TType = "Army"
	  $TName = "Warden     "
	  $LOGName = "Warden"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Warden.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 59
	  $TType = "Army"
	  $TName = "Champion   "
	  $LOGName = "Royal Champion"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\royal.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   case 60
	  $TType = "Army"
	  $TName = "Castle     "
	  $LOGName = "Clan Castle"
	  $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Castle.cur')
	  GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	  OnAutoItExitRegister('OnAutoItExit')
   EndSwitch


   If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 49 Then ; Hero,Siege or Castle
	   GUICtrlSetState($InputBoxOnMap, $GUI_DISABLE)
      GUICtrlSetState($InputBoxOnMap, $GUI_HIDE)
      GUICtrlSetState($lblQTYxVector, $GUI_HIDE)
      GUICtrlSetData($InputBoxOnMap, "1")
	  $ValueOfInputBox = 1
	  If $MultiDropChoose = 1 And $OneDropChoose = 0 Then
		 RadioOneDrop()
	  EndIf
	  GUICtrlSetState($RadioOneDrop,$GUI_CHECKED)
   Else
	  GUICtrlSetState($InputBoxOnMap, $GUI_ENABLE)
      GUICtrlSetState($InputBoxOnMap, $GUI_HIDE)
      GUICtrlSetState($lblQTYxVector, $GUI_HIDE)
      GUICtrlSetData($InputBoxOnMap, "1")
	  $ValueOfInputBox = 1
   EndIf
   GUICtrlSetState($AddCSV, $GUI_HIDE)
   GUICtrlSetState($CheckWait, $GUI_UNCHECKED)
   CheckWaitCheckBOX()
   GUICtrlSetData($LblRandom1forA,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forB,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forC,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forD,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forE,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forF,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forG,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblRandom1forH,"Let bot drop my " & $LOGName & "(s)")
   GUICtrlSetData($LblLine2forA,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forB,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forC,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forD,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forE,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forF,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forG,$LOGName & "(s)")
   GUICtrlSetData($LblLine2forH,$LOGName & "(s)")

   If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) < 50 And _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 37 Then ; Spell
	  Local $x = 54900
	  Local $y = 18000
	  GUICtrlSetPos($aAddTile2, $x , $y)
	  GUICtrlSetPos($aAddTile1, $x , $y + 27)
	  GUICtrlSetPos($aAddTile0, $x , $y + 54)
	  GUICtrlSetState($CheckBuilding, $GUI_ENABLE)
	  GUICtrlSetState($CheckBuilding,$GUI_UNCHECKED)
	  CheckBuildingControl()
	  GUICtrlSetState($AddRandomXandY, $GUI_ENABLE)
	  MakeAllDropANDAddtileButtonResetColor()
	  _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
	  _GUICtrlComboBox_SelectString($RandomnessSlider, "exact Point")
	  _GUICtrlComboBox_EndUpdate($RandomnessSlider)
	  ComboRandomnessCombo()

	  $AddTileChoose = True
	  GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
	  GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
	  GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
	  $SideNumber = 0
	  $SpellSideNumber = 0
	  $AddTile = ""
	  GUICtrlSetState($RadioOneDrop,$GUI_CHECKED)
	  GUICtrlSetState($RadioMultiDrop,$GUI_UNCHECKED)
	  GUICtrlSetState($RadioMultiDrop,$GUI_DISABLE)
	  If $MultiDropChoose = 1 And $OneDropChoose = 0 Then
		 RadioOneDrop()
	  EndIf
   Else
	  $SideNumber = 0
	  $SpellSideNumber = 0
	  $AddTile = ""
	  GUICtrlSetState($CheckBuilding, $GUI_DISABLE)
	  GUICtrlSetState($CheckBuilding,$GUI_UNCHECKED)
	  CheckBuildingControl()
	  If $OneDropChoose = 1 Then
		  Local $x = 54900
		  Local $y = 18000
		  GUICtrlSetPos($aAddTile2, $x , $y)
		  GUICtrlSetPos($aAddTile1, $x , $y + 27)
		  GUICtrlSetPos($aAddTile0, $x , $y + 54)
		  GUICtrlSetBkColor($aAddTile0,0xFF0000)
		  MakeAllDropANDAddtileButtonResetColor()
	  EndIf
	  GUICtrlSetState($AddRandomXandY, $GUI_DISABLE)
	  GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
	  AddRandomXandY()
	  GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
	  GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
	  GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)

	  If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 49 Then ; Hero,Siege or Castle
		 GUICtrlSetState($RadioMultiDrop,$GUI_UNCHECKED)
		 GUICtrlSetState($RadioMultiDrop,$GUI_DISABLE)
		 GUICtrlSetState($RadioOneDrop,$GUI_CHECKED)
		 If $MultiDropChoose = 1 And $OneDropChoose = 0 Then
			RadioOneDrop()
		 EndIf
	  Else
		 GUICtrlSetState($RadioMultiDrop,$GUI_ENABLE)
	  EndIf
   EndIf

   If not $TName = "" Then
	  GuiCtrlSetState($SleepInput1,$GUI_DISABLE)
	  GuiCtrlSetState($SleepInput2,$GUI_DISABLE)
	  GuiCtrlSetState($Sleep,$GUI_UNCHECKED)
   EndIf

EndFunc