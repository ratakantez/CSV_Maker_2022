
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Counting Troop and Size
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (14th October 2022)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2022
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================

Func CountUsedTroops()
   GetQTY_X_VECT()
   If $MultiDropChoose = 1 Then
	  If $SideType = "_A" And GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED Then
 		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforA
		 If GUICtrlRead($DoubleMultiDropforA)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforA * 2
		 EndIf
	  ElseIf $SideType = "_A" And GUICtrlRead($RadioForLineforA) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforA))
		 If GUICtrlRead($DoubleMultiDropforA)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforA)) * 2
		 EndIf
	  ElseIf $SideType = "_B" And GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforB
		 If GUICtrlRead($DoubleMultiDropforB)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforB * 2
		 EndIf
	  ElseIf $SideType = "_B" And GUICtrlRead($RadioForLineforB) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforB))
		 If GUICtrlRead($DoubleMultiDropforB)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforB)) * 2
		 EndIf
	  ElseIf $SideType = "_C" And GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforC
		 If GUICtrlRead($DoubleMultiDropforC)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforC * 2
		 EndIf
	  ElseIf $SideType = "_C" And GUICtrlRead($RadioForLineforC) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforC))
		 If GUICtrlRead($DoubleMultiDropforC)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforC)) * 2
		 EndIf
	  ElseIf $SideType = "_D" And GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforD
		 If GUICtrlRead($DoubleMultiDropforD)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforD * 2
		 EndIf
	  ElseIf $SideType = "_D" And GUICtrlRead($RadioForLineforD) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforD))
		 If GUICtrlRead($DoubleMultiDropforD)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforD)) * 2
		 EndIf
	  ElseIf $SideType = "_E" And GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforE
		 If GUICtrlRead($DoubleMultiDropforE)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforE * 2
		 EndIf
	  ElseIf $SideType = "_E" And GUICtrlRead($RadioForLineforE) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforE))
		 If GUICtrlRead($DoubleMultiDropforE)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforE)) * 2
		 EndIf
	  ElseIf $SideType = "_F" And GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforF
		 If GUICtrlRead($DoubleMultiDropforF)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforF * 2
		 EndIf
	  ElseIf $SideType = "_F" And GUICtrlRead($RadioForLineforF) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforF))
		 If GUICtrlRead($DoubleMultiDropforF)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforF)) * 2
		 EndIf
	  ElseIf $SideType = "_G" And GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforG
		 If GUICtrlRead($DoubleMultiDropforG)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforG * 2
		 EndIf
	  ElseIf $SideType = "_G" And GUICtrlRead($RadioForLineforG) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforG))
		 If GUICtrlRead($DoubleMultiDropforG)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforG)) * 2
		 EndIf
	  ElseIf $SideType = "_H" And GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED Then
		 $TroopSizeinCSV = $ArmySizeforMixedDropPointforH
		 If GUICtrlRead($DoubleMultiDropforH)= $GUI_CHECKED Then
			$TroopSizeinCSV = $ArmySizeforMixedDropPointforH * 2
		 EndIf
	  ElseIf $SideType = "_H" And GUICtrlRead($RadioForLineforH) = $GUI_CHECKED Then
		 $TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforH))
		 If GUICtrlRead($DoubleMultiDropforH)= $GUI_CHECKED Then
			$TroopSizeinCSV = Number(GUICtrlRead($ArmySizeinLineforH)) * 2
		 EndIf
	  EndIf
   ElseIf $OneDropChoose = 1 Then
	  $TroopSizeinCSV = $ValueOfInputBox
   EndIf


   If $LOGName = "Barbarian" Then
		$CountBarbarian = $TroopSizeinCSV + $CountBarbarian
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
   ElseIf $LOGName = "Archer" Then
		$CountArcher = $TroopSizeinCSV + $CountArcher
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Giant" Then
		$CountGiant = $TroopSizeinCSV + $CountGiant
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Goblin" Then
		$CountGoblin = $TroopSizeinCSV + $CountGoblin
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wall Breaker" Then
		$CountWallBreaker = $TroopSizeinCSV + $CountWallBreaker
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baloon" Then
		$CountBaloon = $TroopSizeinCSV + $CountBaloon
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wizard" Then
		$CountWizard = $TroopSizeinCSV + $CountWizard
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Healer" Then
		$CountHealer = $TroopSizeinCSV + $CountHealer
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon" Then
		$CountDragon = $TroopSizeinCSV + $CountDragon
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "P.E.K.K.A" Then
		$CountPekka = $TroopSizeinCSV + $CountPekka
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baby Dragon" Then
		$CountBabyDragon = $TroopSizeinCSV + $CountBabyDragon
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Miner" Then
		$CountMiner = $TroopSizeinCSV + $CountMiner
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $LOGName = "Electro Dragon" Then
		$CountElectroDragon = $TroopSizeinCSV + $CountElectroDragon
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Yeti" Then
		$CountYeti = $TroopSizeinCSV + $CountYeti
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $LOGName = "Minion" Then
		$CountMinion = $TroopSizeinCSV + $CountMinion
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Hog Rider" Then
		$CountHogRider = $TroopSizeinCSV + $CountHogRider
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Valkyre" Then
		$CountValkyre = $TroopSizeinCSV + $CountValkyre
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Golem" Then
		$CountGolem = $TroopSizeinCSV + $CountGolem
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Witch" Then
		$CountWitch = $TroopSizeinCSV + $CountWitch
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Lava Hound" Then
		$CountLavaHound = $TroopSizeinCSV + $CountLavaHound
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Bowler" Then
		$CountBowler = $TroopSizeinCSV + $CountBowler
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Golem" Then
		$CountIceGolem = $TroopSizeinCSV + $CountIceGolem
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Barbarian" Then
		$CountSuperBarbarian = $TroopSizeinCSV + $CountSuperBarbarian
		$CountSuperBarbarianSize = $CountSuperBarbarian * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Archer" Then
		$CountSuperArcher = $TroopSizeinCSV + $CountSuperArcher
		$CountSuperArcherSize = $CountSuperArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Giant" Then
		$CountSuperGiant = $TroopSizeinCSV + $CountSuperGiant
		$CountSuperGiantSize = $CountSuperGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Sneaky Goblin" Then
		$CountSuperGoblin = $TroopSizeinCSV + $CountSuperGoblin
		$CountSuperGoblinSize = $CountSuperGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Wall Breaker" Then
		$CountSuperWallBreaker = $TroopSizeinCSV + $CountSuperWallBreaker
		$CountSuperWallBreakerSize = $CountSuperWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Rocket Baloon" Then
		$CountRocketBaloon =$TroopSizeinCSV + $CountRocketBaloon
		$CountRocketBaloonSize = $CountRocketBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Wizard" Then
		$CountSuperWizard = $TroopSizeinCSV + $CountSuperWizard
		$CountSuperWizardSize = $CountSuperWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Inferno Dragon" Then
		$CountInfernoDragon = $TroopSizeinCSV + $CountInfernoDragon
		$CountInfernoDragonSize = $CountInfernoDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Dragon" Then
		$CountSuperDragon = $TroopSizeinCSV + $CountSuperDragon
		$CountSuperDragonSize = $CountSuperDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon Rider" Then
		$CountDragonRider = $TroopSizeinCSV + $CountDragonRider
		$CountDragonRiderSize = $CountDragonRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Head Hunter" Then
		$CountHunter = $TroopSizeinCSV + $CountHunter
		$CountHunterSize = $CountHunter * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Minion" Then
		$CountSuperMinion = $TroopSizeinCSV + $CountSuperMinion
		$CountSuperMinionSize = $CountSuperMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Valkyre" Then
		$CountSuperValkyre = $TroopSizeinCSV + $CountSuperValkyre
		$CountSuperValkyreSize = $CountSuperValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Witch" Then
		$CountSuperWitch = $TroopSizeinCSV + $CountSuperWitch
		$CountSuperWitchSize = $CountSuperWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Hound" Then
		$CountIceHound = $TroopSizeinCSV + $CountIceHound
		$CountIceHoundSize = $CountIceHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Super Bowler" Then
		$CountSuperBowler = $TroopSizeinCSV + $CountSuperBowler
		$CountSuperBowlerSize = $CountSuperBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Light Spell" Then
		$CountLSpell = $TroopSizeinCSV + $CountLSpell
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Heal Spell" Then
		$CountHSpell = $TroopSizeinCSV + $CountHSpell
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Rage Spell" Then
		$CountRSpell = $TroopSizeinCSV + $CountRSpell
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Jump Spell" Then
		$CountJSpell = $TroopSizeinCSV + $CountJSpell
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Freeze Spell" Then
		$CountFSpell = $TroopSizeinCSV + $CountFSpell
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Clone Spell" Then
		$CountCSpell = $TroopSizeinCSV + $CountCSpell
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Invisibility Spell" Then
		$CountISpell = $TroopSizeinCSV + $CountISpell
		$CountISpellSize = $CountISpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Poison Spell" Then
		$CountPSpell = $TroopSizeinCSV + $CountPSpell
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Earthquake Spell" Then
		$CountESpell = $TroopSizeinCSV + $CountESpell
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Haste Spell" Then
		$CountHaSpell = $TroopSizeinCSV + $CountHaSpell
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Skeleton Spell" Then
		$CountSkSpell = $TroopSizeinCSV + $CountSkSpell
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "Bat Spell" Then
		$CountBtSpell = $TroopSizeinCSV + $CountBtSpell
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "King" Then
		$CountKing = $CountKing + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Queen" Then
		$CountQueen = $CountQueen + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Warden" Then
		$CountWarden = $CountWarden + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Royal Champion" Then
		$CountRoyaleChampion = $CountRoyaleChampion + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Wall Wrecker" Then
		$CountWW = $CountWW + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Battle Blimp" Then
		$CountBB = $CountBB + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Stone Slamer" Then
		$CountSS = $CountSS + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Siege Barrack" Then
		$CountSB = $CountSB + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Log Launcher" Then
		$CountLL = $CountLL + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Flame Flinger" Then
		$CountFF = $CountFF + 1
		$TroopSizeinCSV = 0
	ElseIf $LOGName = "Clan Castle" Then
		$CountCC = $CountCC + 1
		$TroopSizeinCSV = 0
	EndIf

   $LastTroopCount = $TroopSizeinCSV
   $LastTroopName = $LOGName

   $SumOfArmySizeCount =$CountBarbarianSize + $CountSuperBarbarianSize + $CountArcherSize + _
						$CountSuperArcherSize + $CountGiantSize + $CountSuperGiantSize + $CountGoblinSize + _
						$CountSuperGoblinSize + $CountWallBreakerSize + $CountSuperWallBreakerSize + $CountBaloonSize + _
						$CountRocketBaloonSize + $CountWizardSize + $CountSuperWizardSize + $CountHealerSize + _
						$CountDragonSize + $CountInfernoDragonSize + $CountSuperDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize + $CountElectroDragonSize + $CountYetiSize + $CountDragonRiderSize + _
						$CountMinionSize +  $CountSuperMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountSuperValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountSuperWitchSize + $CountLavaHoundSize + $CountIceHoundSize + _
						$CountBowlerSize + $CountSuperBowlerSize + $CountIceGolemSize + $CountHunterSize

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountISpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize
	ShowCountedArmyINGui()

EndFunc   ;==>CountUsedTroops

Func CountUsedTroopsAfterUndo()


    If $Undo_Array_CSVTroopName[$iStep] = "Barbarian" Then
		$CountBarbarian = $CountBarbarian - $Undo_Array_CSVTroopCount[$iStep]
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
    ElseIf $Undo_Array_CSVTroopName[$iStep] = "Archer" Then
		$CountArcher = $CountArcher - $Undo_Array_CSVTroopCount[$iStep]
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Giant" Then
		$CountGiant = $CountGiant - $Undo_Array_CSVTroopCount[$iStep]
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Goblin" Then
		$CountGoblin = $CountGoblin - $Undo_Array_CSVTroopCount[$iStep]
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Wall Breaker" Then
		$CountWallBreaker = $CountWallBreaker - $Undo_Array_CSVTroopCount[$iStep]
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Baloon" Then
		$CountBaloon = $CountBaloon - $Undo_Array_CSVTroopCount[$iStep]
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Wizard" Then
		$CountWizard = $CountWizard - $Undo_Array_CSVTroopCount[$iStep]
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Healer" Then
		$CountHealer = $CountHealer - $Undo_Array_CSVTroopCount[$iStep]
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Dragon" Then
		$CountDragon = $CountDragon - $Undo_Array_CSVTroopCount[$iStep]
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Dragon" Then
		$CountSuperDragon = $CountSuperDragon - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperDragonSize = $CountSuperDragon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "P.E.K.K.A" Then
		$CountPekka = $CountPekka - $Undo_Array_CSVTroopCount[$iStep]
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Baby Dragon" Then
		$CountBabyDragon = $CountBabyDragon - $Undo_Array_CSVTroopCount[$iStep]
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Miner" Then
		$CountMiner = $CountMiner - $Undo_Array_CSVTroopCount[$iStep]
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Electro Dragon" Then
		$CountElectroDragon = $CountElectroDragon - $Undo_Array_CSVTroopCount[$iStep]
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Yeti" Then
		$CountYeti = $CountYeti - $Undo_Array_CSVTroopCount[$iStep]
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Minion" Then
		$CountMinion = $CountMinion - $Undo_Array_CSVTroopCount[$iStep]
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Hog Rider" Then
		$CountHogRider = $CountHogRider - $Undo_Array_CSVTroopCount[$iStep]
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Valkyre" Then
		$CountValkyre = $CountValkyre - $Undo_Array_CSVTroopCount[$iStep]
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Golem" Then
		$CountGolem = $CountGolem - $Undo_Array_CSVTroopCount[$iStep]
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Witch" Then
		$CountWitch = $CountWitch - $Undo_Array_CSVTroopCount[$iStep]
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Lava Hound" Then
		$CountLavaHound = $CountLavaHound - $Undo_Array_CSVTroopCount[$iStep]
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Bowler" Then
		$CountBowler = $CountBowler - $Undo_Array_CSVTroopCount[$iStep]
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Ice Golem" Then
		$CountIceGolem = $CountIceGolem - $Undo_Array_CSVTroopCount[$iStep]
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Barbarian" Then
		$CountSuperBarbarian = $CountSuperBarbarian - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperBarbarianSize = $CountSuperBarbarian * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Archer" Then
		$CountSuperArcher = $CountSuperArcher - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperArcherSize = $CountSuperArcher * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Giant" Then
		$CountSuperGiant = $CountSuperGiant - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperGiantSize = $CountSuperGiant * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Sneaky Goblin" Then
		$CountSuperGoblin = $CountSuperGoblin - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperGoblinSize = $CountSuperGoblin * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Wall Breaker" Then
		$CountSuperWallBreaker = $CountSuperWallBreaker - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperWallBreakerSize = $CountSuperWallBreaker * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Rocket Baloon" Then
		$CountRocketBaloon =$TroopSizeinCSV + $CountRocketBaloon - $Undo_Array_CSVTroopCount[$iStep]
		$CountRocketBaloonSize = $CountRocketBaloon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Wizard" Then
		$CountSuperWizard = $CountSuperWizard - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperWizardSize = $CountSuperWizard * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Inferno Dragon" Then
		$CountInfernoDragon = $CountInfernoDragon - $Undo_Array_CSVTroopCount[$iStep]
		$CountInfernoDragonSize = $CountInfernoDragon * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Dragon Rider" Then
		$CountDragonRider = $CountDragonRider - $Undo_Array_CSVTroopCount[$iStep]
		$CountDragonRiderSize = $CountDragonRider * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Head Hunter" Then
		$CountHunter = $CountHunter - $Undo_Array_CSVTroopCount[$iStep]
		$CountHunterSize = $CountHunter * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Minion" Then
		$CountSuperMinion = $CountSuperMinion - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperMinionSize = $CountSuperMinion * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Valkyre" Then
		$CountSuperValkyre = $CountSuperValkyre - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperValkyreSize = $CountSuperValkyre * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Witch" Then
		$CountSuperWitch = $CountSuperWitch - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperWitchSize = $CountSuperWitch * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Ice Hound" Then
		$CountIceHound = $CountIceHound - $Undo_Array_CSVTroopCount[$iStep]
		$CountIceHoundSize = $CountIceHound * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Super Bowler" Then
		$CountSuperBowler = $CountSuperBowler - $Undo_Array_CSVTroopCount[$iStep]
		$CountSuperBowlerSize = $CountSuperBowler * $CounterTroop_TroopSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Light Spell" Then
		$CountLSpell = $CountLSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Heal Spell" Then
		$CountHSpell = $CountHSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Rage Spell" Then
		$CountRSpell = $CountRSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Jump Spell" Then
		$CountJSpell = $CountJSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Freeze Spell" Then
		$CountFSpell = $CountFSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Clone Spell" Then
		$CountCSpell = $CountCSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Invisibility Spell" Then
		$CountISpell = $CountISpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountISpellSize = $CountISpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Poison Spell" Then
		$CountPSpell = $CountPSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Earthquake Spell" Then
		$CountESpell = $CountESpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Haste Spell" Then
		$CountHaSpell = $CountHaSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Skeleton Spell" Then
		$CountSkSpell = $CountSkSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Bat Spell" Then
		$CountBtSpell = $CountBtSpell - $Undo_Array_CSVTroopCount[$iStep]
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "King" Then
		$CountKing = $CountKing - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Queen" Then
		$CountQueen = $CountQueen - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Warden" Then
		$CountWarden = $CountWarden - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Royal Champion" Then
		$CountRoyaleChampion = $CountRoyaleChampion - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Wall Wrecker" Then
		$CountWW = $CountWW - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Battle Blimp" Then
		$CountBB = $CountBB - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Stone Slamer" Then
		$CountSS = $CountSS - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Siege Barrack" Then
		$CountSB = $CountSB - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Log Launcher" Then
		$CountLL = $CountLL - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Flame Flinger" Then
		$CountFF = $CountFF - 1
	ElseIf $Undo_Array_CSVTroopName[$iStep] = "Clan Castle" Then
		$CountCC = $CountCC - 1
	EndIf

  $SumOfArmySizeCount =$CountBarbarianSize + $CountSuperBarbarianSize + $CountArcherSize + _
						$CountSuperArcherSize + $CountGiantSize + $CountSuperGiantSize + $CountGoblinSize + _
						$CountSuperGoblinSize + $CountWallBreakerSize + $CountSuperWallBreakerSize + $CountBaloonSize + _
						$CountRocketBaloonSize + $CountWizardSize + $CountSuperWizardSize + $CountHealerSize + _
						$CountDragonSize + $CountInfernoDragonSize + $CountSuperDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize + $CountElectroDragonSize + $CountYetiSize + $CountDragonRiderSize + _
						$CountMinionSize +  $CountSuperMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountSuperValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountSuperWitchSize + $CountLavaHoundSize + $CountIceHoundSize + _
						$CountBowlerSize + $CountSuperBowlerSize + $CountIceGolemSize + $CountHunterSize

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountISpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize

	ShowCountedArmyINGui()



EndFunc   ;==>CountUsedTroopsAfterUndo


Func ShowCountedArmyINGui()

	If $CountBarbarian > 0 Then
		$CountUsedBarbarianShow = "Barbarian   |"
		For $i = 1 To 7
			$CountUsedBarbarianShow = $CountUsedBarbarianShow & " "
			If $i + Number(StringLen(String($CountBarbarian))) = 7 Then
				$CountUsedBarbarianShow = $CountUsedBarbarianShow & String($CountBarbarian) & "|"
				For $i = 1 To 7
					$CountUsedBarbarianShow = $CountUsedBarbarianShow & " "
					If $i + Number(StringLen(String($CountBarbarianSize))) = 7 Then
						$CountUsedBarbarianShow = $CountUsedBarbarianShow & String($CountBarbarianSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedBarbarianShow = ""
	EndIf
	If $CountSuperBarbarian > 0 Then
		$CountUsedSuperBarbarianShow = "S. Barbarian|"
		For $i = 1 To 7
			$CountUsedSuperBarbarianShow = $CountUsedSuperBarbarianShow & " "
			If $i + Number(StringLen(String($CountSuperBarbarian))) = 7 Then
				$CountUsedSuperBarbarianShow = $CountUsedSuperBarbarianShow & String($CountSuperBarbarian) & "|"
				For $i = 1 To 7
					$CountUsedSuperBarbarianShow = $CountUsedSuperBarbarianShow & " "
					If $i + Number(StringLen(String($CountSuperBarbarianSize))) = 7 Then
						$CountUsedSuperBarbarianShow = $CountUsedSuperBarbarianShow & String($CountSuperBarbarianSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperBarbarianShow = ""
	EndIf
	If $CountArcher > 0 Then
		$CountUsedArcherShow = "Archer      |"
		For $i = 1 To 7
			$CountUsedArcherShow = $CountUsedArcherShow & " "
			If $i + Number(StringLen(String($CountArcher))) = 7 Then
				$CountUsedArcherShow = $CountUsedArcherShow & String($CountArcher) & "|"
				For $i = 1 To 7
					$CountUsedArcherShow = $CountUsedArcherShow & " "
					If $i + Number(StringLen(String($CountArcherSize))) = 7 Then
						$CountUsedArcherShow = $CountUsedArcherShow & String($CountArcherSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedArcherShow = ""
	EndIf
	If $CountSuperArcher > 0 Then
		$CountUsedSuperArcherShow = "Super Archer|"
		For $i = 1 To 7
			$CountUsedSuperArcherShow = $CountUsedSuperArcherShow & " "
			If $i + Number(StringLen(String($CountSuperArcher))) = 7 Then
				$CountUsedSuperArcherShow = $CountUsedSuperArcherShow & String($CountSuperArcher) & "|"
				For $i = 1 To 7
					$CountUsedSuperArcherShow = $CountUsedSuperArcherShow & " "
					If $i + Number(StringLen(String($CountSuperArcherSize))) = 7 Then
						$CountUsedSuperArcherShow = $CountUsedSuperArcherShow & String($CountSuperArcherSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperArcherShow = ""
	EndIf
	If $CountGiant > 0 Then
		$CountUsedGiantShow = "Giant       |"
		For $i = 1 To 7
			$CountUsedGiantShow = $CountUsedGiantShow & " "
			If $i + Number(StringLen(String($CountGiant))) = 7 Then
				$CountUsedGiantShow = $CountUsedGiantShow & String($CountGiant) & "|"
				For $i = 1 To 7
					$CountUsedGiantShow = $CountUsedGiantShow & " "
					If $i + Number(StringLen(String($CountGiantSize))) = 7 Then
						$CountUsedGiantShow = $CountUsedGiantShow & String($CountGiantSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedGiantShow = ""
	EndIf
	If $CountSuperGiant > 0 Then
		$CountUsedSuperGiantShow = "Super Giant |"
		For $i = 1 To 7
			$CountUsedSuperGiantShow = $CountUsedSuperGiantShow & " "
			If $i + Number(StringLen(String($CountSuperGiant))) = 7 Then
				$CountUsedSuperGiantShow = $CountUsedSuperGiantShow & String($CountSuperGiant) & "|"
				For $i = 1 To 7
					$CountUsedSuperGiantShow = $CountUsedSuperGiantShow & " "
					If $i + Number(StringLen(String($CountSuperGiantSize))) = 7 Then
						$CountUsedSuperGiantShow = $CountUsedSuperGiantShow & String($CountSuperGiantSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperGiantShow = ""
	EndIf
	If $CountGoblin > 0 Then
		$CountUsedGoblinShow = "Goblin      |"
		For $i = 1 To 7
			$CountUsedGoblinShow = $CountUsedGoblinShow & " "
			If $i + Number(StringLen(String($CountGoblin))) = 7 Then
				$CountUsedGoblinShow = $CountUsedGoblinShow & String($CountGoblin) & "|"
				For $i = 1 To 7
					$CountUsedGoblinShow = $CountUsedGoblinShow & " "
					If $i + Number(StringLen(String($CountGoblinSize))) = 7 Then
						$CountUsedGoblinShow = $CountUsedGoblinShow & String($CountGoblinSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedGoblinShow = ""
	EndIf
	If $CountSuperGoblin > 0 Then
		$CountUsedSuperGoblinShow = "Snky. Goblin|"
		For $i = 1 To 7
			$CountUsedSuperGoblinShow = $CountUsedSuperGoblinShow & " "
			If $i + Number(StringLen(String($CountSuperGoblin))) = 7 Then
				$CountUsedSuperGoblinShow = $CountUsedSuperGoblinShow & String($CountSuperGoblin) & "|"
				For $i = 1 To 7
					$CountUsedSuperGoblinShow = $CountUsedSuperGoblinShow & " "
					If $i + Number(StringLen(String($CountSuperGoblinSize))) = 7 Then
						$CountUsedSuperGoblinShow = $CountUsedSuperGoblinShow & String($CountSuperGoblinSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperGoblinShow = ""
	EndIf
	If $CountWallBreaker > 0 Then
		$CountUsedWallBreakerShow = "Wall Breaker|"
		For $i = 1 To 7
			$CountUsedWallBreakerShow = $CountUsedWallBreakerShow & " "
			If $i + Number(StringLen(String($CountWallBreaker))) = 7 Then
				$CountUsedWallBreakerShow = $CountUsedWallBreakerShow & String($CountWallBreaker) & "|"
				For $i = 1 To 7
					$CountUsedWallBreakerShow = $CountUsedWallBreakerShow & " "
					If $i + Number(StringLen(String($CountWallBreakerSize))) = 7 Then
						$CountUsedWallBreakerShow = $CountUsedWallBreakerShow & String($CountWallBreakerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedWallBreakerShow = ""
	EndIf
	If $CountSuperWallBreaker > 0 Then
		$CountUsedSuperWallBreakerShow = "S. Wall Br. |"
		For $i = 1 To 7
			$CountUsedSuperWallBreakerShow = $CountUsedSuperWallBreakerShow & " "
			If $i + Number(StringLen(String($CountSuperWallBreaker))) = 7 Then
				$CountUsedSuperWallBreakerShow = $CountUsedSuperWallBreakerShow & String($CountSuperWallBreaker) & "|"
				For $i = 1 To 7
					$CountUsedSuperWallBreakerShow = $CountUsedSuperWallBreakerShow & " "
					If $i + Number(StringLen(String($CountSuperWallBreakerSize))) = 7 Then
						$CountUsedSuperWallBreakerShow = $CountUsedSuperWallBreakerShow & String($CountSuperWallBreakerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperWallBreakerShow = ""
	EndIf
	If $CountBaloon > 0 Then
		$CountUsedBaloonShow = "Balloon     |"
		For $i = 1 To 7
			$CountUsedBaloonShow = $CountUsedBaloonShow & " "
			If $i + Number(StringLen(String($CountBaloon))) = 7 Then
				$CountUsedBaloonShow = $CountUsedBaloonShow & String($CountBaloon) & "|"
				For $i = 1 To 7
					$CountUsedBaloonShow = $CountUsedBaloonShow & " "
					If $i + Number(StringLen(String($CountBaloonSize))) = 7 Then
						$CountUsedBaloonShow = $CountUsedBaloonShow & String($CountBaloonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedBaloonShow = ""
	EndIf
	If $CountRocketBaloon > 0 Then
		$CountUsedRocketBaloonShow = "Rock. Baloon|"
		For $i = 1 To 7
			$CountUsedRocketBaloonShow = $CountUsedRocketBaloonShow & " "
			If $i + Number(StringLen(String($CountRocketBaloon))) = 7 Then
				$CountUsedRocketBaloonShow = $CountUsedRocketBaloonShow & String($CountRocketBaloon) & "|"
				For $i = 1 To 7
					$CountUsedRocketBaloonShow = $CountUsedRocketBaloonShow & " "
					If $i + Number(StringLen(String($CountRocketBaloonSize))) = 7 Then
						$CountUsedRocketBaloonShow = $CountUsedRocketBaloonShow & String($CountRocketBaloonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedRocketBaloonShow = ""
	EndIf
	If $CountWizard > 0 Then
		$CountUsedWizardShow = "Wizard      |"
		For $i = 1 To 7
			$CountUsedWizardShow = $CountUsedWizardShow & " "
			If $i + Number(StringLen(String($CountWizard))) = 7 Then
				$CountUsedWizardShow = $CountUsedWizardShow & String($CountWizard) & "|"
				For $i = 1 To 7
					$CountUsedWizardShow = $CountUsedWizardShow & " "
					If $i + Number(StringLen(String($CountWizardSize))) = 7 Then
						$CountUsedWizardShow = $CountUsedWizardShow & String($CountWizardSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedWizardShow = ""
	EndIf
	If $CountSuperWizard > 0 Then
		$CountUsedSuperWizardShow = "Super Wizard|"
		For $i = 1 To 7
			$CountUsedSuperWizardShow = $CountUsedSuperWizardShow & " "
			If $i + Number(StringLen(String($CountSuperWizard))) = 7 Then
				$CountUsedSuperWizardShow = $CountUsedSuperWizardShow & String($CountSuperWizard) & "|"
				For $i = 1 To 7
					$CountUsedSuperWizardShow = $CountUsedSuperWizardShow & " "
					If $i + Number(StringLen(String($CountSuperWizardSize))) = 7 Then
						$CountUsedSuperWizardShow = $CountUsedSuperWizardShow & String($CountSuperWizardSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperWizardShow = ""
	EndIf
	If $CountHealer > 0 Then
		$CountUsedHealerShow = "Healer      |"
		For $i = 1 To 7
			$CountUsedHealerShow = $CountUsedHealerShow & " "
			If $i + Number(StringLen(String($CountHealer))) = 7 Then
				$CountUsedHealerShow = $CountUsedHealerShow & String($CountHealer) & "|"
				For $i = 1 To 7
					$CountUsedHealerShow = $CountUsedHealerShow & " "
					If $i + Number(StringLen(String($CountHealerSize))) = 7 Then
						$CountUsedHealerShow = $CountUsedHealerShow & String($CountHealerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedHealerShow = ""
	EndIf
	If $CountDragon > 0 Then
		$CountUsedDragonShow = "Dragon      |"
		For $i = 1 To 7
			$CountUsedDragonShow = $CountUsedDragonShow & " "
			If $i + Number(StringLen(String($CountDragon))) = 7 Then
				$CountUsedDragonShow = $CountUsedDragonShow & String($CountDragon) & "|"
				For $i = 1 To 7
					$CountUsedDragonShow = $CountUsedDragonShow & " "
					If $i + Number(StringLen(String($CountDragonSize))) = 7 Then
						$CountUsedDragonShow = $CountUsedDragonShow & String($CountDragonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedDragonShow = ""
	EndIf
	If $CountInfernoDragon > 0 Then
		$CountUsedInfernoDragonShow = "Inf. Dragon |"
		For $i = 1 To 7
			$CountUsedInfernoDragonShow = $CountUsedInfernoDragonShow & " "
			If $i + Number(StringLen(String($CountInfernoDragon))) = 7 Then
				$CountUsedInfernoDragonShow = $CountUsedInfernoDragonShow & String($CountInfernoDragon) & "|"
				For $i = 1 To 7
					$CountUsedInfernoDragonShow = $CountUsedInfernoDragonShow & " "
					If $i + Number(StringLen(String($CountInfernoDragonSize))) = 7 Then
						$CountUsedInfernoDragonShow = $CountUsedInfernoDragonShow & String($CountInfernoDragonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedInfernoDragonShow = ""
	EndIf
	If $CountSuperDragon > 0 Then
		$CountUsedSuperDragonShow = "Super Dragon|"
		For $i = 1 To 7
			$CountUsedSuperDragonShow = $CountUsedSuperDragonShow & " "
			If $i + Number(StringLen(String($CountSuperDragon))) = 7 Then
				$CountUsedSuperDragonShow = $CountUsedSuperDragonShow & String($CountSuperDragon) & "|"
				For $i = 1 To 7
					$CountUsedSuperDragonShow = $CountUsedSuperDragonShow & " "
					If $i + Number(StringLen(String($CountSuperDragonSize))) = 7 Then
						$CountUsedSuperDragonShow = $CountUsedSuperDragonShow & String($CountSuperDragonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperDragonShow = ""
	EndIf
	If $CountPekka > 0 Then
		$CountUsedPekkaShow = "Pekka       |"
		For $i = 1 To 7
			$CountUsedPekkaShow = $CountUsedPekkaShow & " "
			If $i + Number(StringLen(String($CountPekka))) = 7 Then
				$CountUsedPekkaShow = $CountUsedPekkaShow & String($CountPekka) & "|"
				For $i = 1 To 7
					$CountUsedPekkaShow = $CountUsedPekkaShow & " "
					If $i + Number(StringLen(String($CountPekkaSize))) = 7 Then
						$CountUsedPekkaShow = $CountUsedPekkaShow & String($CountPekkaSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedPekkaShow = ""
	EndIf
	If $CountBabyDragon > 0 Then
		$CountUsedBabyDragonShow = "Baby Dragon |"
		For $i = 1 To 7
			$CountUsedBabyDragonShow = $CountUsedBabyDragonShow & " "
			If $i + Number(StringLen(String($CountBabyDragon))) = 7 Then
				$CountUsedBabyDragonShow = $CountUsedBabyDragonShow & String($CountBabyDragon) & "|"
				For $i = 1 To 7
					$CountUsedBabyDragonShow = $CountUsedBabyDragonShow & " "
					If $i + Number(StringLen(String($CountBabyDragonSize))) = 7 Then
						$CountUsedBabyDragonShow = $CountUsedBabyDragonShow & String($CountBabyDragonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedBabyDragonShow = ""
	EndIf
	If $CountMiner > 0 Then
		$CountUsedMinerShow = "Miner       |"
		For $i = 1 To 7
			$CountUsedMinerShow = $CountUsedMinerShow & " "
			If $i + Number(StringLen(String($CountMiner))) = 7 Then
				$CountUsedMinerShow = $CountUsedMinerShow & String($CountMiner) & "|"
				For $i = 1 To 7
					$CountUsedMinerShow = $CountUsedMinerShow & " "
					If $i + Number(StringLen(String($CountMinerSize))) = 7 Then
						$CountUsedMinerShow = $CountUsedMinerShow & String($CountMinerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedMinerShow = ""
	EndIf
	If $CountElectroDragon > 0 Then
		$CountUsedElectroDragonShow = "Electro Drg.|"
		For $i = 1 To 7
			$CountUsedElectroDragonShow = $CountUsedElectroDragonShow & " "
			If $i + Number(StringLen(String($CountElectroDragon))) = 7 Then
				$CountUsedElectroDragonShow = $CountUsedElectroDragonShow & String($CountElectroDragon) & "|"
				For $i = 1 To 7
					$CountUsedElectroDragonShow = $CountUsedElectroDragonShow & " "
					If $i + Number(StringLen(String($CountElectroDragonSize))) = 7 Then
						$CountUsedElectroDragonShow = $CountUsedElectroDragonShow & String($CountElectroDragonSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedElectroDragonShow = ""
	EndIf
	If $CountYeti > 0 Then
		$CountUsedYetiShow = "Yeti        |"
		For $i = 1 To 7
			$CountUsedYetiShow = $CountUsedYetiShow & " "
			If $i + Number(StringLen(String($CountYeti))) = 7 Then
				$CountUsedYetiShow = $CountUsedYetiShow & String($CountYeti) & "|"
				For $i = 1 To 7
					$CountUsedYetiShow = $CountUsedYetiShow & " "
					If $i + Number(StringLen(String($CountYetiSize))) = 7 Then
						$CountUsedYetiShow = $CountUsedYetiShow & String($CountYetiSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedYetiShow = ""
	EndIf
	If $CountDragonRider > 0 Then
		$CountUsedDragonRiderShow = "Dragon Rider|"
		For $i = 1 To 7
			$CountUsedDragonRiderShow = $CountUsedDragonRiderShow & " "
			If $i + Number(StringLen(String($CountDragonRider))) = 7 Then
				$CountUsedDragonRiderShow = $CountUsedDragonRiderShow & String($CountDragonRider) & "|"
				For $i = 1 To 7
					$CountUsedDragonRiderShow = $CountUsedDragonRiderShow & " "
					If $i + Number(StringLen(String($CountDragonRiderSize))) = 7 Then
						$CountUsedDragonRiderShow = $CountUsedDragonRiderShow & String($CountDragonRiderSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedDragonRiderShow = ""
	EndIf
	If $CountMinion > 0 Then
		$CountUsedMinionShow = "Minion      |"
		For $i = 1 To 7
			$CountUsedMinionShow = $CountUsedMinionShow & " "
			If $i + Number(StringLen(String($CountMinion))) = 7 Then
				$CountUsedMinionShow = $CountUsedMinionShow & String($CountMinion) & "|"
				For $i = 1 To 7
					$CountUsedMinionShow = $CountUsedMinionShow & " "
					If $i + Number(StringLen(String($CountMinionSize))) = 7 Then
						$CountUsedMinionShow = $CountUsedMinionShow & String($CountMinionSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedMinionShow = ""
	EndIf
	If $CountSuperMinion > 0 Then
		$CountUsedSuperMinionShow = "Super Minion|"
		For $i = 1 To 7
			$CountUsedSuperMinionShow = $CountUsedSuperMinionShow & " "
			If $i + Number(StringLen(String($CountSuperMinion))) = 7 Then
				$CountUsedSuperMinionShow = $CountUsedSuperMinionShow & String($CountSuperMinion) & "|"
				For $i = 1 To 7
					$CountUsedSuperMinionShow = $CountUsedSuperMinionShow & " "
					If $i + Number(StringLen(String($CountSuperMinionSize))) = 7 Then
						$CountUsedSuperMinionShow = $CountUsedSuperMinionShow & String($CountSuperMinionSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperMinionShow = ""
	EndIf
	If $CountHogRider > 0 Then
		$CountUsedHogRiderShow = "Hog Rider   |"
		For $i = 1 To 7
			$CountUsedHogRiderShow = $CountUsedHogRiderShow & " "
			If $i + Number(StringLen(String($CountHogRider))) = 7 Then
				$CountUsedHogRiderShow = $CountUsedHogRiderShow & String($CountHogRider) & "|"
				For $i = 1 To 7
					$CountUsedHogRiderShow = $CountUsedHogRiderShow & " "
					If $i + Number(StringLen(String($CountHogRiderSize))) = 7 Then
						$CountUsedHogRiderShow = $CountUsedHogRiderShow & String($CountHogRiderSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedHogRiderShow = ""
	EndIf
	If $CountValkyre > 0 Then
		$CountUsedValkyreShow = "Valkyre     |"
		For $i = 1 To 7
			$CountUsedValkyreShow = $CountUsedValkyreShow & " "
			If $i + Number(StringLen(String($CountValkyre))) = 7 Then
				$CountUsedValkyreShow = $CountUsedValkyreShow & String($CountValkyre) & "|"
				For $i = 1 To 7
					$CountUsedValkyreShow = $CountUsedValkyreShow & " "
					If $i + Number(StringLen(String($CountValkyreSize))) = 7 Then
						$CountUsedValkyreShow = $CountUsedValkyreShow & String($CountValkyreSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedValkyreShow = ""
	EndIf
	If $CountSuperValkyre > 0 Then
		$CountUsedSuperValkyreShow = "Spr. Valkyre|"
		For $i = 1 To 7
			$CountUsedSuperValkyreShow = $CountUsedSuperValkyreShow & " "
			If $i + Number(StringLen(String($CountSuperValkyre))) = 7 Then
				$CountUsedSuperValkyreShow = $CountUsedSuperValkyreShow & String($CountSuperValkyre) & "|"
				For $i = 1 To 7
					$CountUsedSuperValkyreShow = $CountUsedSuperValkyreShow & " "
					If $i + Number(StringLen(String($CountSuperValkyreSize))) = 7 Then
						$CountUsedSuperValkyreShow = $CountUsedSuperValkyreShow & String($CountSuperValkyreSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperValkyreShow = ""
	EndIf
	If $CountGolem > 0 Then
		$CountUsedGolemShow = "Golem       |"
		For $i = 1 To 7
			$CountUsedGolemShow = $CountUsedGolemShow & " "
			If $i + Number(StringLen(String($CountGolem))) = 7 Then
				$CountUsedGolemShow = $CountUsedGolemShow & String($CountGolem) & "|"
				For $i = 1 To 7
					$CountUsedGolemShow = $CountUsedGolemShow & " "
					If $i + Number(StringLen(String($CountGolemSize))) = 7 Then
						$CountUsedGolemShow = $CountUsedGolemShow & String($CountGolemSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedGolemShow = ""
	EndIf
	If $CountWitch > 0 Then
		$CountUsedWitchShow = "Witch       |"
		For $i = 1 To 7
			$CountUsedWitchShow = $CountUsedWitchShow & " "
			If $i + Number(StringLen(String($CountWitch))) = 7 Then
				$CountUsedWitchShow = $CountUsedWitchShow & String($CountWitch) & "|"
				For $i = 1 To 7
					$CountUsedWitchShow = $CountUsedWitchShow & " "
					If $i + Number(StringLen(String($CountWitchSize))) = 7 Then
						$CountUsedWitchShow = $CountUsedWitchShow & String($CountWitchSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedWitchShow = ""
	EndIf
	If $CountSuperWitch > 0 Then
		$CountUsedSuperWitchShow = "Super Witch |"
		For $i = 1 To 7
			$CountUsedSuperWitchShow = $CountUsedSuperWitchShow & " "
			If $i + Number(StringLen(String($CountSuperWitch))) = 7 Then
				$CountUsedSuperWitchShow = $CountUsedSuperWitchShow & String($CountSuperWitch) & "|"
				For $i = 1 To 7
					$CountUsedSuperWitchShow = $CountUsedSuperWitchShow & " "
					If $i + Number(StringLen(String($CountSuperWitchSize))) = 7 Then
						$CountUsedSuperWitchShow = $CountUsedSuperWitchShow & String($CountSuperWitchSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperWitchShow = ""
	EndIf
	If $CountLavaHound > 0 Then
		$CountUsedLavaHoundShow = "Lava Hound  |"
		For $i = 1 To 7
			$CountUsedLavaHoundShow = $CountUsedLavaHoundShow & " "
			If $i + Number(StringLen(String($CountLavaHound))) = 7 Then
				$CountUsedLavaHoundShow = $CountUsedLavaHoundShow & String($CountLavaHound) & "|"
				For $i = 1 To 7
					$CountUsedLavaHoundShow = $CountUsedLavaHoundShow & " "
					If $i + Number(StringLen(String($CountLavaHoundSize))) = 7 Then
						$CountUsedLavaHoundShow = $CountUsedLavaHoundShow & String($CountLavaHoundSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedLavaHoundShow = ""
	EndIf
	If $CountIceHound > 0 Then
		$CountUsedIceHoundShow = "Ice Hound   |"
		For $i = 1 To 7
			$CountUsedIceHoundShow = $CountUsedIceHoundShow & " "
			If $i + Number(StringLen(String($CountIceHound))) = 7 Then
				$CountUsedIceHoundShow = $CountUsedIceHoundShow & String($CountIceHound) & "|"
				For $i = 1 To 7
					$CountUsedIceHoundShow = $CountUsedIceHoundShow & " "
					If $i + Number(StringLen(String($CountIceHoundSize))) = 7 Then
						$CountUsedIceHoundShow = $CountUsedIceHoundShow & String($CountIceHoundSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedIceHoundShow = ""
	EndIf
	If $CountBowler > 0 Then
		$CountUsedBowlerShow = "Bowler      |"
		For $i = 1 To 7
			$CountUsedBowlerShow = $CountUsedBowlerShow & " "
			If $i + Number(StringLen(String($CountBowler))) = 7 Then
				$CountUsedBowlerShow = $CountUsedBowlerShow & String($CountBowler) & "|"
				For $i = 1 To 7
					$CountUsedBowlerShow = $CountUsedBowlerShow & " "
					If $i + Number(StringLen(String($CountBowlerSize))) = 7 Then
						$CountUsedBowlerShow = $CountUsedBowlerShow & String($CountBowlerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedBowlerShow = ""
	EndIf
	If $CountSuperBowler > 0 Then
		$CountUsedSuperBowlerShow = "Super Bowler|"
		For $i = 1 To 7
			$CountUsedSuperBowlerShow = $CountUsedSuperBowlerShow & " "
			If $i + Number(StringLen(String($CountSuperBowler))) = 7 Then
				$CountUsedSuperBowlerShow = $CountUsedSuperBowlerShow & String($CountSuperBowler) & "|"
				For $i = 1 To 7
					$CountUsedSuperBowlerShow = $CountUsedSuperBowlerShow & " "
					If $i + Number(StringLen(String($CountSuperBowlerSize))) = 7 Then
						$CountUsedSuperBowlerShow = $CountUsedSuperBowlerShow & String($CountSuperBowlerSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSuperBowlerShow = ""
	EndIf
	If $CountIceGolem > 0 Then
		$CountUsedIceGolemShow = "Ice Golem   |"
		For $i = 1 To 7
			$CountUsedIceGolemShow = $CountUsedIceGolemShow & " "
			If $i + Number(StringLen(String($CountIceGolem))) = 7 Then
				$CountUsedIceGolemShow = $CountUsedIceGolemShow & String($CountIceGolem) & "|"
				For $i = 1 To 7
					$CountUsedIceGolemShow = $CountUsedIceGolemShow & " "
					If $i + Number(StringLen(String($CountIceGolemSize))) = 7 Then
						$CountUsedIceGolemShow = $CountUsedIceGolemShow & String($CountIceGolemSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedIceGolemShow = ""
	EndIf
	If $CountHunter > 0 Then
		$CountUsedHunterShow = "Head Hunter |"
		For $i = 1 To 7
			$CountUsedHunterShow = $CountUsedHunterShow & " "
			If $i + Number(StringLen(String($CountHunter))) = 7 Then
				$CountUsedHunterShow = $CountUsedHunterShow & String($CountHunter) & "|"
				For $i = 1 To 7
					$CountUsedHunterShow = $CountUsedHunterShow & " "
					If $i + Number(StringLen(String($CountHunterSize))) = 7 Then
						$CountUsedHunterShow = $CountUsedHunterShow & String($CountHunterSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedHunterShow = ""
	EndIf

	;Spell

	If $CountLSpell > 0 Then
		$CountUsedLSpellShow = "Light S.    |"
		For $i = 1 To 7
			$CountUsedLSpellShow = $CountUsedLSpellShow & " "
			If $i + Number(StringLen(String($CountLSpell))) = 7 Then
				$CountUsedLSpellShow = $CountUsedLSpellShow & String($CountLSpell) & "|"
				For $i = 1 To 7
					$CountUsedLSpellShow = $CountUsedLSpellShow & " "
					If $i + Number(StringLen(String($CountLSpellSize))) = 7 Then
						$CountUsedLSpellShow = $CountUsedLSpellShow & String($CountLSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedLSpellShow = ""
	EndIf
	If $CountHSpell > 0 Then
		$CountUsedHSpellShow = "Heal S.     |"
		For $i = 1 To 7
			$CountUsedHSpellShow = $CountUsedHSpellShow & " "
			If $i + Number(StringLen(String($CountHSpell))) = 7 Then
				$CountUsedHSpellShow = $CountUsedHSpellShow & String($CountHSpell) & "|"
				For $i = 1 To 7
					$CountUsedHSpellShow = $CountUsedHSpellShow & " "
					If $i + Number(StringLen(String($CountHSpellSize))) = 7 Then
						$CountUsedHSpellShow = $CountUsedHSpellShow & String($CountHSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedHSpellShow = ""
	EndIf
	If $CountRSpell > 0 Then
		$CountUsedRSpellShow = "Rage S.     |"
		For $i = 1 To 7
			$CountUsedRSpellShow = $CountUsedRSpellShow & " "
			If $i + Number(StringLen(String($CountRSpell))) = 7 Then
				$CountUsedRSpellShow = $CountUsedRSpellShow & String($CountRSpell) & "|"
				For $i = 1 To 7
					$CountUsedRSpellShow = $CountUsedRSpellShow & " "
					If $i + Number(StringLen(String($CountRSpellSize))) = 7 Then
						$CountUsedRSpellShow = $CountUsedRSpellShow & String($CountRSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedRSpellShow = ""
	EndIf
	If $CountJSpell > 0 Then
		$CountUsedJSpellShow = "Jump S.     |"
		For $i = 1 To 7
			$CountUsedJSpellShow = $CountUsedJSpellShow & " "
			If $i + Number(StringLen(String($CountJSpell))) = 7 Then
				$CountUsedJSpellShow = $CountUsedJSpellShow & String($CountJSpell) & "|"
				For $i = 1 To 7
					$CountUsedJSpellShow = $CountUsedJSpellShow & " "
					If $i + Number(StringLen(String($CountJSpellSize))) = 7 Then
						$CountUsedJSpellShow = $CountUsedJSpellShow & String($CountJSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedJSpellShow = ""
	EndIf
	If $CountFSpell > 0 Then
		$CountUsedFSpellShow = "Freeze S.   |"
		For $i = 1 To 7
			$CountUsedFSpellShow = $CountUsedFSpellShow & " "
			If $i + Number(StringLen(String($CountFSpell))) = 7 Then
				$CountUsedFSpellShow = $CountUsedFSpellShow & String($CountFSpell) & "|"
				For $i = 1 To 7
					$CountUsedFSpellShow = $CountUsedFSpellShow & " "
					If $i + Number(StringLen(String($CountFSpellSize))) = 7 Then
						$CountUsedFSpellShow = $CountUsedFSpellShow & String($CountFSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedFSpellShow = ""
	EndIf
	If $CountCSpell > 0 Then
		$CountUsedCSpellShow = "Clone S.    |"
		For $i = 1 To 7
			$CountUsedCSpellShow = $CountUsedCSpellShow & " "
			If $i + Number(StringLen(String($CountCSpell))) = 7 Then
				$CountUsedCSpellShow = $CountUsedCSpellShow & String($CountCSpell) & "|"
				For $i = 1 To 7
					$CountUsedCSpellShow = $CountUsedCSpellShow & " "
					If $i + Number(StringLen(String($CountCSpellSize))) = 7 Then
						$CountUsedCSpellShow = $CountUsedCSpellShow & String($CountCSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedCSpellShow = ""
	EndIf
	If $CountISpell > 0 Then
		$CountUsedISpellShow = "Invisib. S. |"
		For $i = 1 To 7
			$CountUsedISpellShow = $CountUsedISpellShow & " "
			If $i + Number(StringLen(String($CountISpell))) = 7 Then
				$CountUsedISpellShow = $CountUsedISpellShow & String($CountISpell) & "|"
				For $i = 1 To 7
					$CountUsedISpellShow = $CountUsedISpellShow & " "
					If $i + Number(StringLen(String($CountISpellSize))) = 7 Then
						$CountUsedISpellShow = $CountUsedISpellShow & String($CountISpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedISpellShow = ""
	EndIf
	If $CountPSpell > 0 Then
		$CountUsedPSpellShow = "Poison S.   |"
		For $i = 1 To 7
			$CountUsedPSpellShow = $CountUsedPSpellShow & " "
			If $i + Number(StringLen(String($CountPSpell))) = 7 Then
				$CountUsedPSpellShow = $CountUsedPSpellShow & String($CountPSpell) & "|"
				For $i = 1 To 7
					$CountUsedPSpellShow = $CountUsedPSpellShow & " "
					If $i + Number(StringLen(String($CountPSpellSize))) = 7 Then
						$CountUsedPSpellShow = $CountUsedPSpellShow & String($CountPSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedPSpellShow = ""
	EndIf
	If $CountESpell > 0 Then
		$CountUsedESpellShow = "Eeathquake S|"
		For $i = 1 To 7
			$CountUsedESpellShow = $CountUsedESpellShow & " "
			If $i + Number(StringLen(String($CountESpell))) = 7 Then
				$CountUsedESpellShow = $CountUsedESpellShow & String($CountESpell) & "|"
				For $i = 1 To 7
					$CountUsedESpellShow = $CountUsedESpellShow & " "
					If $i + Number(StringLen(String($CountESpellSize))) = 7 Then
						$CountUsedESpellShow = $CountUsedESpellShow & String($CountESpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedESpellShow = ""
	EndIf
	If $CountHaSpell > 0 Then
		$CountUsedHaSpellShow = "Haste S.    |"
		For $i = 1 To 7
			$CountUsedHaSpellShow = $CountUsedHaSpellShow & " "
			If $i + Number(StringLen(String($CountHaSpell))) = 7 Then
				$CountUsedHaSpellShow = $CountUsedHaSpellShow & String($CountHaSpell) & "|"
				For $i = 1 To 7
					$CountUsedHaSpellShow = $CountUsedHaSpellShow & " "
					If $i + Number(StringLen(String($CountHaSpellSize))) = 7 Then
						$CountUsedHaSpellShow = $CountUsedHaSpellShow & String($CountHaSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedHaSpellShow = ""
	EndIf
	If $CountSkSpell > 0 Then
		$CountUsedSkSpellShow = "Skeleton S. |"
		For $i = 1 To 7
			$CountUsedSkSpellShow = $CountUsedSkSpellShow & " "
			If $i + Number(StringLen(String($CountSkSpell))) = 7 Then
				$CountUsedSkSpellShow = $CountUsedSkSpellShow & String($CountSkSpell) & "|"
				For $i = 1 To 7
					$CountUsedSkSpellShow = $CountUsedSkSpellShow & " "
					If $i + Number(StringLen(String($CountSkSpellSize))) = 7 Then
						$CountUsedSkSpellShow = $CountUsedSkSpellShow & String($CountSkSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedSkSpellShow = ""
	EndIf
	If $CountBtSpell > 0 Then
		$CountUsedBtSpellShow = "Bat S.      |"
		For $i = 1 To 7
			$CountUsedBtSpellShow = $CountUsedBtSpellShow & " "
			If $i + Number(StringLen(String($CountBtSpell))) = 7 Then
				$CountUsedBtSpellShow = $CountUsedBtSpellShow & String($CountBtSpell) & "|"
				For $i = 1 To 7
					$CountUsedBtSpellShow = $CountUsedBtSpellShow & " "
					If $i + Number(StringLen(String($CountBtSpellSize))) = 7 Then
						$CountUsedBtSpellShow = $CountUsedBtSpellShow & String($CountBtSpellSize) & "|" & @CRLF
						ExitLoop
					EndIf
				Next
				ExitLoop
			EndIf
		Next
	Else
		$CountUsedBtSpellShow = ""
	EndIf

	If $CountKing > 0 Then
		$CountUsedKingShow = "King             " & ChrW("8730") &@CRLF
	Else
		$CountUsedKingShow = ""
	EndIf
	If $CountQueen > 0 Then
		$CountUsedQueenShow = "Queen            " & ChrW("8730") &@CRLF
	Else
		$CountUsedQueenShow = ""
	EndIf
	If $CountRoyaleChampion > 0 Then
		$CountUsedRoyaleChampionShow = "Royal Champion   " & ChrW("8730") &@CRLF
	Else
		$CountUsedRoyaleChampionShow = ""
	EndIf
	If $CountWarden > 0 Then
		$CountUsedWardenShow = "Warden           " & ChrW("8730") &@CRLF
	Else
		$CountUsedWardenShow = ""
	EndIf
	If $CountWW > 0 Then
		$CountUsedWWShow = "Wall Wrecker     " & ChrW("8730") &@CRLF
	Else
		$CountUsedWWShow = ""
	EndIf
	If $CountBB > 0 Then
		$CountUsedBBShow = "Battle Blimp     " & ChrW("8730") &@CRLF
	Else
		$CountUsedBBShow = ""
	EndIf
	If $CountSS > 0 Then
		$CountUsedSSShow = "Stone Slamer     " & ChrW("8730") &@CRLF
	Else
		$CountUsedSSShow = ""
	EndIf
	If $CountSB > 0 Then
		$CountUsedSBShow = "Siege Barrack    " & ChrW("8730") &@CRLF
	Else
		$CountUsedSBShow = ""
	EndIf
	If $CountLL > 0 Then
		$CountUsedLLShow = "Log Launcher     " & ChrW("8730") &@CRLF
	Else
		$CountUsedLLShow = ""
	EndIf
	If $CountFF > 0 Then
		$CountUsedFFShow = "Flame Flinger    " & ChrW("8730") &@CRLF
	Else
		$CountUsedFFShow = ""
	EndIf
	If $CountCC > 0 Then
		$CountUsedCCShow = "Clan Castle      " & ChrW("8730") &@CRLF
	Else
		$CountUsedCCShow = ""
	EndIf

   $SumOfArmySizeCountShow = "Your Used Army Size is " & Number($SumOfArmySizeCount) & @CRLF
   If Number($SumOfArmySizeCount) > 300 Then
	   $SumOfArmySizeCountShow = "Your Used Army Size is " & Number($SumOfArmySizeCount) & " !!!...!!!" &@CRLF
   EndIf

   $SumOfSpellSizeCountShow = "Your Used Spell Size is " & String($SumOfSpellSizeCount)
   If Number($SumOfSpellSizeCount) > 11 Then
	   $SumOfSpellSizeCountShow = "Your Used Army Size is " & Number($SumOfSpellSizeCount) & " !!!...!!!" &@CRLF
   EndIf


	$ArmyCountTXT = $CountUsedBarbarianShow & $CountUsedSuperBarbarianShow & _
					$CountUsedArcherShow & $CountUsedSuperArcherShow & _
					$CountUsedGiantShow & $CountUsedSuperGiantShow & _
					$CountUsedGoblinShow & $CountUsedSuperGoblinShow & _
					$CountUsedWallBreakerShow & $CountUsedSuperWallBreakerShow & _
					$CountUsedBaloonShow & $CountUsedRocketBaloonShow & _
					$CountUsedWizardShow & $CountUsedSuperWizardShow & _
					$CountUsedHealerShow & $CountUsedDragonShow & $CountUsedSuperDragonShow & _
					$CountUsedInfernoDragonShow & $CountUsedPekkaShow & _
					$CountUsedBabyDragonShow & $CountUsedMinerShow & _
					$CountUsedElectroDragonShow & $CountUsedYetiShow & _
					$CountUsedDragonRiderShow & $CountUsedMinionShow & _
					$CountUsedSuperMinionShow & $CountUsedHogRiderShow & _
					$CountUsedValkyreShow & $CountUsedSuperValkyreShow & _
					$CountUsedGolemShow & $CountUsedWitchShow & _
					$CountUsedSuperWitchShow & $CountUsedLavaHoundShow & _
					$CountUsedIceHoundShow & $CountUsedBowlerShow & _
					$CountUsedSuperBowlerShow & $CountUsedIceGolemShow & _
					$CountUsedHunterShow & _
					$CountUsedLSpellShow & $CountUsedHSpellShow & _
					$CountUsedRSpellShow & $CountUsedJSpellShow & _
					$CountUsedFSpellShow & $CountUsedCSpellShow & $CountUsedISpellShow & _
					$CountUsedPSpellShow & $CountUsedESpellShow & _
					$CountUsedHaSpellShow & $CountUsedSkSpellShow & _
					$CountUsedBtSpellShow & _
					$CountUsedKingShow & _
					$CountUsedQueenShow & _
					$CountUsedWardenShow & _
					$CountUsedRoyaleChampionShow & _
					$CountUsedWWShow & _
					$CountUsedBBShow & _
					$CountUsedSSShow & _
					$CountUsedSBShow & _
					$CountUsedLLShow & _
					$CountUsedFFShow & _
					$CountUsedCCShow

	If $ArmyCountTXT = "" Then
		$ArmyCountTXT = $ArmyCountTXT & _
					$SumOfArmySizeCountShow & _
					$SumOfSpellSizeCountShow
	Else
		$ArmyCountTXT =	$ArmyCountTXT & _
					"----------------------------" & @CRLF & _
					$SumOfArmySizeCountShow & _
					$SumOfSpellSizeCountShow
	EndIf

EndFunc
