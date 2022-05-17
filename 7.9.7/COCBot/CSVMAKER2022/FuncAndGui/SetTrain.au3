
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================

Func SetTrain()
;Barbarian
	If Number(GUICtrlRead($TH6txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH7txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH8txtNumBarbarian)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH10txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH11txtNumBarbarian)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH13txtNumBarbarian)) > 0 Or Number(GUICtrlRead($TH14txtNumBarbarian)) > 0 Then
		$TrainBarb = "TRAIN |Barb       |" & StringLeft(Number(GUICtrlRead($TH6txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH7txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH8txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH9txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH10txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBarbarian)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainBarb = ""
	EndIf
;SuperBarbarian
	If Number(GUICtrlRead($TH6txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperBarbarian)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperBarbarian)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperBarbarian)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperBarbarian)) > 0 Then
		$TrainSBarb = "TRAIN |SBarb      |" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperBarbarian)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperBarbarian)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperBarbarian)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperBarbarian)) & $BlankCharacters,11) & _
									    "|" & @CRLF
	Else
		$TrainSBarb = ""
	EndIf
;archer
	If Number(GUICtrlRead($TH6txtNumArcher)) > 0 Or Number(GUICtrlRead($TH7txtNumArcher)) > 0 Or Number(GUICtrlRead($TH8txtNumArcher)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumArcher)) > 0 Or Number(GUICtrlRead($TH10txtNumArcher)) > 0 Or Number(GUICtrlRead($TH11txtNumArcher)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumArcher)) > 0 Or Number(GUICtrlRead($TH13txtNumArcher)) > 0 Or Number(GUICtrlRead($TH14txtNumArcher)) > 0 Then
		$TrainArcher = "TRAIN |Arch       |" & StringLeft(Number(GUICtrlRead($TH6txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumArcher)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainArcher = ""
	EndIf
;SuperArcher
	If Number(GUICtrlRead($TH6txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperArcher)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperArcher)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperArcher)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperArcher)) > 0 Then
		$TrainSArcher = "TRAIN |SArch      |" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperArcher)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperArcher)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperArcher)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperArcher)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainSArcher = ""
	EndIf
;Giant
	If Number(GUICtrlRead($TH6txtNumGiant)) > 0 Or Number(GUICtrlRead($TH7txtNumGiant)) > 0 Or Number(GUICtrlRead($TH8txtNumGiant)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumGiant)) > 0 Or Number(GUICtrlRead($TH10txtNumGiant)) > 0 Or Number(GUICtrlRead($TH11txtNumGiant)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumGiant)) > 0 Or Number(GUICtrlRead($TH13txtNumGiant)) > 0 Or Number(GUICtrlRead($TH14txtNumGiant)) > 0 Then
		$TrainGiant = "TRAIN |Giant      |" & StringLeft(Number(GUICtrlRead($TH6txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH7txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH8txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH9txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH10txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH11txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH12txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH13txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH14txtNumGiant)) & $BlankCharacters,11) & _
									    "|" & @CRLF
	Else
		$TrainGiant = ""
	EndIf
;SuperGiant
	If Number(GUICtrlRead($TH6txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperGiant)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperGiant)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperGiant)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperGiant)) > 0 Then
		$TrainSGiant = "TRAIN |SGiant     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperGiant)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperGiant)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperGiant)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperGiant)) & $BlankCharacters,11) & _
									     "|" & @CRLF
	Else
		$TrainSGiant = ""
	EndIf
;Goblin
	If Number(GUICtrlRead($TH6txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH7txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH8txtNumGoblin)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH10txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH11txtNumGoblin)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH13txtNumGoblin)) > 0 Or Number(GUICtrlRead($TH14txtNumGoblin)) > 0 Then
		$TrainGoblin = "TRAIN |Gobl       |" & StringLeft(Number(GUICtrlRead($TH6txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH7txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH8txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH9txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH10txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH11txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH12txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH13txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH14txtNumGoblin)) & $BlankCharacters,11) & _
									     "|" & @CRLF
	Else
		$TrainGoblin = ""
	EndIf
;SuperGoblin
	If Number(GUICtrlRead($TH6txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperGoblin)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperGoblin)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperGoblin)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperGoblin)) > 0 Then
		$TrainSGoblin = "TRAIN |SGobl      |" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft("0" & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperGoblin)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperGoblin)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperGoblin)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperGoblin)) & $BlankCharacters,11) & _
									      "|" & @CRLF
	Else
		$TrainSGoblin = ""
	EndIf
;WallBreaker
	If Number(GUICtrlRead($TH6txtNumWall)) > 0 Or Number(GUICtrlRead($TH7txtNumWall)) > 0 Or Number(GUICtrlRead($TH8txtNumWall)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumWall)) > 0 Or Number(GUICtrlRead($TH10txtNumWall)) > 0 Or Number(GUICtrlRead($TH11txtNumWall)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumWall)) > 0 Or Number(GUICtrlRead($TH13txtNumWall)) > 0 Or Number(GUICtrlRead($TH14txtNumWall)) > 0 Then
		$TrainWallB = "TRAIN |Wall       |" & StringLeft(Number(GUICtrlRead($TH6txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH7txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH8txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH9txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH10txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH11txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumWall)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumWall)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainWallB = ""
	EndIf
;Super WallBreaker
	If Number(GUICtrlRead($TH6txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperWall)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperWall)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperWall)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperWall)) > 0 Then
		$TrainSWallB = "TRAIN |SWall      |" & & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperWall)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperWall)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperWall)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperWall)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainSWallB = ""
	EndIf
;Balloon
	If Number(GUICtrlRead($TH6txtNumBall)) > 0 Or Number(GUICtrlRead($TH7txtNumBall)) > 0 Or Number(GUICtrlRead($TH8txtNumBall)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBall)) > 0 Or Number(GUICtrlRead($TH10txtNumBall)) > 0 Or Number(GUICtrlRead($TH11txtNumBall)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBall)) > 0 Or Number(GUICtrlRead($TH13txtNumBall)) > 0 Or Number(GUICtrlRead($TH14txtNumBall)) > 0 Then
		$TrainBalloon = "TRAIN |Ball       |" & StringLeft(Number(GUICtrlRead($TH6txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH7txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH8txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH9txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH10txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBall)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBall)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainBalloon = ""
	EndIf
;Rocket Balloon
	If Number(GUICtrlRead($TH6txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH7txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH8txtNumRocketBall)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH10txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH11txtNumRocketBall)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH13txtNumRocketBall)) > 0 Or Number(GUICtrlRead($TH14txtNumRocketBall)) > 0 Then
		$TrainRBalloon = "TRAIN |RBall      |" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumRocketBall)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumRocketBall)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumRocketBall)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumRocketBall)) & $BlankCharacters,11) & _
										   "|" & @CRLF
	Else
		$TrainRBalloon = ""
	EndIf
;Wizard
	If Number(GUICtrlRead($TH6txtNumWiza)) > 0 Or Number(GUICtrlRead($TH7txtNumWiza)) > 0 Or Number(GUICtrlRead($TH8txtNumWiza)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumWiza)) > 0 Or Number(GUICtrlRead($TH10txtNumWiza)) > 0 Or Number(GUICtrlRead($TH11txtNumWiza)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumWiza)) > 0 Or Number(GUICtrlRead($TH13txtNumWiza)) > 0 Or Number(GUICtrlRead($TH14txtNumWiza)) > 0 Then
		$TrainWizard = "TRAIN |Wiza       |" & StringLeft(Number(GUICtrlRead($TH6txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumWiza)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainWizard = ""
	EndIf
;SuperWizard
	If Number(GUICtrlRead($TH6txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperWiza)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperWiza)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperWiza)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperWiza)) > 0 Then
		$TrainSWizard = "TRAIN |SWiza      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperWiza)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperWiza)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperWiza)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperWiza)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainSWizard = ""
	EndIf
;Healer
	If Number(GUICtrlRead($TH6txtNumHeal)) > 0 Or Number(GUICtrlRead($TH7txtNumHeal)) > 0 Or Number(GUICtrlRead($TH8txtNumHeal)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumHeal)) > 0 Or Number(GUICtrlRead($TH10txtNumHeal)) > 0 Or Number(GUICtrlRead($TH11txtNumHeal)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumHeal)) > 0 Or Number(GUICtrlRead($TH13txtNumHeal)) > 0 Or Number(GUICtrlRead($TH14txtNumHeal)) > 0 Then
		$TrainHealer = "TRAIN |Heal       |" & StringLeft(Number(GUICtrlRead($TH6txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumHeal)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainHealer = ""
	EndIf
;Dragon
	If Number(GUICtrlRead($TH6txtNumDrag)) > 0 Or Number(GUICtrlRead($TH7txtNumDrag)) > 0 Or Number(GUICtrlRead($TH8txtNumDrag)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumDrag)) > 0 Or Number(GUICtrlRead($TH10txtNumDrag)) > 0 Or Number(GUICtrlRead($TH11txtNumDrag)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumDrag)) > 0 Or Number(GUICtrlRead($TH13txtNumDrag)) > 0 Or Number(GUICtrlRead($TH14txtNumDrag)) > 0 Then
		$TrainDragon = "TRAIN |Drag       |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumDrag)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainDragon = ""
	EndIf
;Inferno Dragon
	If Number(GUICtrlRead($TH6txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH7txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH8txtNumIDrag)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH10txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH11txtNumIDrag)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH13txtNumIDrag)) > 0 Or Number(GUICtrlRead($TH14txtNumIDrag)) > 0 Then
		$TrainIDragon = "TRAIN |IDrag      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & __
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumIDrag)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumIDrag)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumIDrag)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumIDrag)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainIDragon = ""
	EndIf
;Super Dragon
	If Number(GUICtrlRead($TH6txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH7txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH8txtNumSDrag)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH10txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH11txtNumSDrag)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH13txtNumSDrag)) > 0 Or Number(GUICtrlRead($TH14txtNumSDrag)) > 0 Then
		$TrainSDragon = "TRAIN |SDrag      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) &
										  "|" & StringLeft("0" & $BlankCharacters,11) &
										  "|" & StringLeft("0" & $BlankCharacters,11) &
										  "|" & StringLeft("0" & $BlankCharacters,11) &
										  "|" & StringLeft("0" & $BlankCharacters,11) &
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSDrag)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSDrag)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSDrag)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainSDragon = ""
	EndIf
;Pekka
	If Number(GUICtrlRead($TH6txtNumPekk)) > 0 Or Number(GUICtrlRead($TH7txtNumPekk)) > 0 Or Number(GUICtrlRead($TH8txtNumPekk)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumPekk)) > 0 Or Number(GUICtrlRead($TH10txtNumPekk)) > 0 Or Number(GUICtrlRead($TH11txtNumPekk)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumPekk)) > 0 Or Number(GUICtrlRead($TH13txtNumPekk)) > 0 Or Number(GUICtrlRead($TH14txtNumPekk)) > 0 Then
		$TrainPekka = "TRAIN |Pekk      |" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH8txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH9txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH10txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumPekk)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainPekka = ""
	EndIf
;BabyDragon
	If Number(GUICtrlRead($TH6txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH7txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH8txtNumBabyDragon)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH10txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH11txtNumBabyDragon)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH13txtNumBabyDragon)) > 0 Or Number(GUICtrlRead($TH14txtNumBabyDragon)) > 0 Then
		$TrainBabyDragon = "TRAIN |BabyD      |" & StringLeft("0" & $BlankCharacters,11) & _
											 "|" & StringLeft("0" & $BlankCharacters,11) & _
											 "|" & StringLeft("0" & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBabyDragon)) & $BlankCharacters,11) & _
											 "|" & @CRLF
	Else
		$TrainBabyDragon = ""
	EndIf
;Miner
	If Number(GUICtrlRead($TH6txtNumMiner)) > 0 Or Number(GUICtrlRead($TH7txtNumMiner)) > 0 Or Number(GUICtrlRead($TH8txtNumMiner)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumMiner)) > 0 Or Number(GUICtrlRead($TH10txtNumMiner)) > 0 Or Number(GUICtrlRead($TH11txtNumMiner)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumMiner)) > 0 Or Number(GUICtrlRead($TH13txtNumMiner)) > 0 Or Number(GUICtrlRead($TH14txtNumMiner)) > 0 Then
		$TrainMiner = "TRAIN |Mine       |" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH10txtNumMiner)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH11txtNumMiner)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumMiner)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumMiner)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumMiner)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainMiner = ""
	EndIf
;Electro Dragon
	If Number(GUICtrlRead($TH6txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH7txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH8txtNumEdrag)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH10txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH11txtNumEdrag)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH13txtNumEdrag)) > 0 Or Number(GUICtrlRead($TH14txtNumEdrag)) > 0 Then
		$TrainEdrag = "TRAIN |EDrag      |" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH11txtNumEdrag)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumEdrag)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumEdrag)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumEdrag)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainEdrag = ""
	EndIf
;Yeti
	If Number(GUICtrlRead($TH6txtNumYeti)) > 0 Or Number(GUICtrlRead($TH7txtNumYeti)) > 0 Or Number(GUICtrlRead($TH8txtNumYeti)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumYeti)) > 0 Or Number(GUICtrlRead($TH10txtNumYeti)) > 0 Or Number(GUICtrlRead($TH11txtNumYeti)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumYeti)) > 0 Or Number(GUICtrlRead($TH13txtNumYeti)) > 0 Or Number(GUICtrlRead($TH14txtNumYeti)) > 0 Then
		$TrainYeti = "TRAIN |Yeti       |" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumYeti)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumYeti)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumYeti)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainYeti = ""
	EndIf
;DragRider
	If Number(GUICtrlRead($TH6txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH7txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH8txtNumDragRider)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH10txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH11txtNumDragRider)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH13txtNumDragRider)) > 0 Or Number(GUICtrlRead($TH14txtNumDragRider)) > 0 Then
		$TrainDragonR = "TRAIN |DragR      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumDragRider)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumDragRider)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainDragonR = ""
	EndIf
;Minion
	If Number(GUICtrlRead($TH6txtNumMini)) > 0 Or Number(GUICtrlRead($TH7txtNumMini)) > 0 Or Number(GUICtrlRead($TH8txtNumMini)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumMini)) > 0 Or Number(GUICtrlRead($TH10txtNumMini)) > 0 Or Number(GUICtrlRead($TH11txtNumMini)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumMini)) > 0 Or Number(GUICtrlRead($TH13txtNumMini)) > 0 Or Number(GUICtrlRead($TH14txtNumMini)) > 0 Then
		$TrainMini = "TRAIN |Mini       |" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH7txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH8txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH9txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH10txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumMini)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumMini)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainMini = ""
	EndIf
;Super Minion
	If Number(GUICtrlRead($TH6txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperMini)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperMini)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperMini)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperMini)) > 0 Then
		$TrainSMini = "TRAIN |SMini      |" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft("0" & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperMini)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperMini)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperMini)) & $BlankCharacters,11) & _
									    "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperMini)) & $BlankCharacters,11) & _
									    "|" & @CRLF
	Else
		$TrainSMini = ""
	EndIf
;Hogs Rider
	If Number(GUICtrlRead($TH6txtNumHogs)) > 0 Or Number(GUICtrlRead($TH7txtNumHogs)) > 0 Or Number(GUICtrlRead($TH8txtNumHogs)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumHogs)) > 0 Or Number(GUICtrlRead($TH10txtNumHogs)) > 0 Or Number(GUICtrlRead($TH11txtNumHogs)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumHogs)) > 0 Or Number(GUICtrlRead($TH13txtNumHogs)) > 0 Or Number(GUICtrlRead($TH14txtNumHogs)) > 0 Then
		$TrainHogsRider = "TRAIN |Hogs       |" & StringLeft("0" & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH7txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH8txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH9txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH10txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH11txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH12txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH13txtNumHogs)) & $BlankCharacters,11) & _
											"|" & StringLeft(Number(GUICtrlRead($TH14txtNumHogs)) & $BlankCharacters,11) & _
											"|" & @CRLF
	Else
		$TrainHogsRider = ""
	EndIf
;Valkyre
	If Number(GUICtrlRead($TH6txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH7txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH8txtNumValkyre)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH10txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH11txtNumValkyre)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH13txtNumValkyre)) > 0 Or Number(GUICtrlRead($TH14txtNumValkyre)) > 0 Then
		$TrainValkyre = "TRAIN |Valk       |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH8txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH9txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH10txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumValkyre)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainValkyre = ""
	EndIf
;SuperValkyre
	If Number(GUICtrlRead($TH6txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperValkyre)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperValkyre)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperValkyre)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperValkyre)) > 0 Then
		$TrainSValkyre = "TRAIN |SValk      |" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft("0" & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperValkyre)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperValkyre)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperValkyre)) & $BlankCharacters,11) & _
										   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperValkyre)) & $BlankCharacters,11) & _
										   "|" & @CRLF
	Else
		$TrainSValkyre = ""
	EndIf
;Golem
	If Number(GUICtrlRead($TH6txtNumGolem)) > 0 Or Number(GUICtrlRead($TH7txtNumGolem)) > 0 Or Number(GUICtrlRead($TH8txtNumGolem)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumGolem)) > 0 Or Number(GUICtrlRead($TH10txtNumGolem)) > 0 Or Number(GUICtrlRead($TH11txtNumGolem)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumGolem)) > 0 Or Number(GUICtrlRead($TH13txtNumGolem)) > 0 Or Number(GUICtrlRead($TH14txtNumGolem)) > 0 Then
		$TrainGolem = "TRAIN |Gole       |" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH8txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH9txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH10txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH11txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumGolem)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumGolem)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainGolem = ""
	EndIf
;Witch
	If Number(GUICtrlRead($TH6txtNumWitch)) > 0 Or Number(GUICtrlRead($TH7txtNumWitch)) > 0 Or Number(GUICtrlRead($TH8txtNumWitch)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumWitch)) > 0 Or Number(GUICtrlRead($TH10txtNumWitch)) > 0 Or Number(GUICtrlRead($TH11txtNumWitch)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumWitch)) > 0 Or Number(GUICtrlRead($TH13txtNumWitch)) > 0 Or Number(GUICtrlRead($TH14txtNumWitch)) > 0 Then
		$TrainWitch = "TRAIN |Witc       |" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH9txtNumWitch)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH10txtNumWitch)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH11txtNumWitch)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumWitch)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumWitch)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumWitch)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainWitch = ""
	EndIf
;Super Witch
	If Number(GUICtrlRead($TH6txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH7txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH8txtNumSuperWitch)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH10txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH11txtNumSuperWitch)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH13txtNumSuperWitch)) > 0 Or Number(GUICtrlRead($TH14txtNumSuperWitch)) > 0 Then
		$TrainSWitch = "TRAIN |SWitc      |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSuperWitch)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSuperWitch)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSuperWitch)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSuperWitch)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainSWitch = ""
	EndIf
;Lava
	If Number(GUICtrlRead($TH6txtNumLava)) > 0 Or Number(GUICtrlRead($TH7txtNumLava)) > 0 Or Number(GUICtrlRead($TH8txtNumLava)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumLava)) > 0 Or Number(GUICtrlRead($TH10txtNumLava)) > 0 Or Number(GUICtrlRead($TH11txtNumLava)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumLava)) > 0 Or Number(GUICtrlRead($TH13txtNumLava)) > 0 Or Number(GUICtrlRead($TH14txtNumLava)) > 0 Then
		$TrainLava = "TRAIN |Lava       |" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH9txtNumLava)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH10txtNumLava)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH11txtNumLava)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH12txtNumLava)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH13txtNumLava)) & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumLava)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainLava = ""
	EndIf
;IceHound
	If Number(GUICtrlRead($TH6txtNumILava)) > 0 Or Number(GUICtrlRead($TH7txtNumILava)) > 0 Or Number(GUICtrlRead($TH8txtNumILava)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumILava)) > 0 Or Number(GUICtrlRead($TH10txtNumILava)) > 0 Or Number(GUICtrlRead($TH11txtNumILava)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumILava)) > 0 Or Number(GUICtrlRead($TH13txtNumILava)) > 0 Or Number(GUICtrlRead($TH14txtNumILava)) > 0 Then
		$TrainIHound = "TRAIN |IceH       |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumILava)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumILava)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumILava)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH14txtNumILava)) & $BlankCharacters,11) & _
									     "|" & @CRLF
	Else
		$TrainIHound = ""
	EndIf
;Bowler
	If Number(GUICtrlRead($TH6txtNumBowler)) > 0 Or Number(GUICtrlRead($TH7txtNumBowler)) > 0 Or Number(GUICtrlRead($TH8txtNumBowler)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBowler)) > 0 Or Number(GUICtrlRead($TH10txtNumBowler)) > 0 Or Number(GUICtrlRead($TH11txtNumBowler)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBowler)) > 0 Or Number(GUICtrlRead($TH13txtNumBowler)) > 0 Or Number(GUICtrlRead($TH14txtNumBowler)) > 0 Then
		$TrainBowler = "TRAIN |Bowl       |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumBowler)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumBowler)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBowler)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBowler)) & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBowler)) & $BlankCharacters,11) & _
									     "|" & @CRLF
	Else
		$TrainBowler = ""
	EndIf
;Super Bowler
	If Number(GUICtrlRead($TH6txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH7txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH8txtNumSBowler)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH10txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH11txtNumSBowler)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH13txtNumSBowler)) > 0 Or Number(GUICtrlRead($TH14txtNumSBowler)) > 0 Then
		$TrainSBowler = "TRAIN |SBowl      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSBowler)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSBowler)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSBowler)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSBowler)) & $BlankCharacters,11) & _
									      "|" & @CRLF
	Else
		$TrainSBowler = ""
	EndIf
;IceGolem
	If Number(GUICtrlRead($TH6txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH7txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH8txtNumIceGolem)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH10txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH11txtNumIceGolem)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH13txtNumIceGolem)) > 0 Or Number(GUICtrlRead($TH14txtNumIceGolem)) > 0 Then
		$TrainIceGolem = "TRAIN |IceG      |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumIceGolem)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumIceGolem)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumIceGolem)) & $BlankCharacters,11) & _
									      "|" & StringLeft(Number(GUICtrlRead($TH14txtNumIceGolem)) & $BlankCharacters,11) & _
									      "|" & @CRLF
	Else
		$TrainIceGolem = ""
	EndIf
;HeadHunter
	If Number(GUICtrlRead($TH6txtNumHunter)) > 0 Or Number(GUICtrlRead($TH7txtNumHunter)) > 0 Or Number(GUICtrlRead($TH8txtNumHunter)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumHunter)) > 0 Or Number(GUICtrlRead($TH10txtNumHunter)) > 0 Or Number(GUICtrlRead($TH11txtNumHunter)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumHunter)) > 0 Or Number(GUICtrlRead($TH13txtNumHunter)) > 0 Or Number(GUICtrlRead($TH14txtNumHunter)) > 0 Then
		$TrainHunter = "TRAIN |Hunt       |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumHunter)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumHunter)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumHunter)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumHunter)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainHunter = ""
	EndIf
;Light Spell
	If Number(GUICtrlRead($TH6txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumLSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumLSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumLSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumLSpell)) > 0 Then
		$TrainLSpell = "TRAIN |LSpell     |" & StringLeft(Number(GUICtrlRead($TH6txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumLSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainLSpell = ""
	EndIf
;Heal Spell
	If Number(GUICtrlRead($TH6txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumHSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumHSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumHSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumHSpell)) > 0 Then
		$TrainHSpell = "TRAIN |HSpell     |" & StringLeft(Number(GUICtrlRead($TH6txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumHSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainHSpell = ""
	EndIf
;Rage Spell
	If Number(GUICtrlRead($TH6txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumRSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumRSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumRSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumRSpell)) > 0 Then
		$TrainRSpell = "TRAIN |RSpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumRSpell)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumRSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainRSpell = ""
	EndIf
;Jump Spell
	If Number(GUICtrlRead($TH6txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumJSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumJSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumJSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumJSpell)) > 0 Then
		$TrainJSpell = "TRAIN |JSpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumJSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainJSpell = ""
	EndIf
;Freeze Spell
	If Number(GUICtrlRead($TH6txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumFSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumFSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumFSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumFSpell)) > 0 Then
		$TrainFSpell = "TRAIN |FSpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumFSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainFSpell = ""
	EndIf
;Poison Spell
	If Number(GUICtrlRead($TH6txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumPSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumPSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumPSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumPSpell)) > 0 Then
		$TrainPSpell = "TRAIN |PSpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumPSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainPSpell = ""
	EndIf
;Clone Spell
	If Number(GUICtrlRead($TH6txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumCSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumCSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumCSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumCSpell)) > 0 Then
		$TrainCSpell = "TRAIN |CSpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumCSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumCSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumCSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumCSpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumCSpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainCSpell = ""
	EndIf
;Clone Spell
	If Number(GUICtrlRead($TH6txtNumISpell)) > 0 Or Number(GUICtrlRead($TH7txtNumISpell)) > 0 Or Number(GUICtrlRead($TH8txtNumISpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumISpell)) > 0 Or Number(GUICtrlRead($TH10txtNumISpell)) > 0 Or Number(GUICtrlRead($TH11txtNumISpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumISpell)) > 0 Or Number(GUICtrlRead($TH13txtNumISpell)) > 0 Or Number(GUICtrlRead($TH14txtNumISpell)) > 0 Then
		$TrainISpell = "TRAIN |ISpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumISpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumISpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumISpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumISpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainISpell = ""
	EndIf
;EarthQuake Spell
	If Number(GUICtrlRead($TH6txtNumESpell)) > 0 Or Number(GUICtrlRead($TH7txtNumESpell)) > 0 Or Number(GUICtrlRead($TH8txtNumESpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumESpell)) > 0 Or Number(GUICtrlRead($TH10txtNumESpell)) > 0 Or Number(GUICtrlRead($TH11txtNumESpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumESpell)) > 0 Or Number(GUICtrlRead($TH13txtNumESpell)) > 0 Or Number(GUICtrlRead($TH14txtNumESpell)) > 0 Then
		$TrainESpell = "TRAIN |ESpell     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH7txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH8txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH9txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH10txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH11txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumESpell)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainESpell = ""
	EndIf
;Haste Spell
	If Number(GUICtrlRead($TH6txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumHaSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumHaSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumHaSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumHaSpell)) > 0 Then
		$TrainHaSpell = "TRAIN |HaSpell    |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH9txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH10txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumHaSpell)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainHaSpell = ""
	EndIf
;Bat Spell
	If Number(GUICtrlRead($TH6txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumBaSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumBaSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumBaSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumBaSpell)) > 0 Then
		$TrainBaSpell = "TRAIN |BaSpell    |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH10txtNumBaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumBaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBaSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBaSpell)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainBaSpell = ""
	EndIf
;Skeleton Spell
	If Number(GUICtrlRead($TH6txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH7txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH8txtNumSkSpell)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH10txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH11txtNumSkSpell)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH13txtNumSkSpell)) > 0 Or Number(GUICtrlRead($TH14txtNumSkSpell)) > 0 Then
		$TrainSkSpell = "TRAIN |SkSpell    |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH8txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH9txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH10txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH11txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSkSpell)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainSkSpell = ""
	EndIf
;Battl B.
	If Number(GUICtrlRead($TH6txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH7txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH8txtNumBattleB)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH10txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH11txtNumBattleB)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH13txtNumBattleB)) > 0 Or Number(GUICtrlRead($TH14txtNumBattleB)) > 0 Then
		$TrainBattleB = "TRAIN |BattleB    |" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft("0" & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH12txtNumBattleB)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH13txtNumBattleB)) & $BlankCharacters,11) & _
										  "|" & StringLeft(Number(GUICtrlRead($TH14txtNumBattleB)) & $BlankCharacters,11) & _
										  "|" & @CRLF
	Else
		$TrainBattleB = ""
	EndIf
;Wall Wrecker.
	If Number(GUICtrlRead($TH6txtNumWallw)) > 0 Or Number(GUICtrlRead($TH7txtNumWallw)) > 0 Or Number(GUICtrlRead($TH8txtNumWallw)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumWallw)) > 0 Or Number(GUICtrlRead($TH10txtNumWallw)) > 0 Or Number(GUICtrlRead($TH11txtNumWallw)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumWallw)) > 0 Or Number(GUICtrlRead($TH13txtNumWallw)) > 0 Or Number(GUICtrlRead($TH14txtNumWallw)) > 0 Then
		$TrainWallw = "TRAIN |WallW      |" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft("0" & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH12txtNumWallw)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH13txtNumWallw)) & $BlankCharacters,11) & _
										"|" & StringLeft(Number(GUICtrlRead($TH14txtNumWallw)) & $BlankCharacters,11) & _
										"|" & @CRLF
	Else
		$TrainWallw = ""
	EndIf
;~ StoneS
	If Number(GUICtrlRead($TH6txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH7txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH8txtNumStoneS)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH10txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH11txtNumStoneS)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH13txtNumStoneS)) > 0 Or Number(GUICtrlRead($TH14txtNumStoneS)) > 0 Then
		$TrainStoneS = "TRAIN |StoneS     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH12txtNumStoneS)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumStoneS)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumStoneS)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainStoneS = ""
	EndIf
;~ SiegeB
	If Number(GUICtrlRead($TH6txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH7txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH8txtNumSiegeB)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH10txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH11txtNumSiegeB)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH13txtNumSiegeB)) > 0 Or Number(GUICtrlRead($TH14txtNumSiegeB)) > 0 Then
		$TrainSiegeB = "TRAIN |SiegeB     |" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft("0" & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH13txtNumSiegeB)) & $BlankCharacters,11) & _
										 "|" & StringLeft(Number(GUICtrlRead($TH14txtNumSiegeB)) & $BlankCharacters,11) & _
										 "|" & @CRLF
	Else
		$TrainSiegeB = ""
	EndIf
;~ LogL
	If Number(GUICtrlRead($TH6txtNumLogL)) > 0 Or Number(GUICtrlRead($TH7txtNumLogL)) > 0 Or Number(GUICtrlRead($TH8txtNumLogL)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumLogL)) > 0 Or Number(GUICtrlRead($TH10txtNumLogL)) > 0 Or Number(GUICtrlRead($TH11txtNumLogL)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumLogL)) > 0 Or Number(GUICtrlRead($TH13txtNumLogL)) > 0 Or Number(GUICtrlRead($TH14txtNumLogL)) > 0 Then
		$TrainLogL = "TRAIN |LogL       |" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft("0" & $BlankCharacters,11) & _
									   "|" & StringLeft(Number(GUICtrlRead($TH14txtNumLogL)) & $BlankCharacters,11) & _
									   "|" & @CRLF
	Else
		$TrainLogL = ""
	EndIf
;~ Flame Flinger
	If Number(GUICtrlRead($TH6txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH7txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH8txtNumFlameF)) > 0 Or _
	   Number(GUICtrlRead($TH9txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH10txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH11txtNumFlameF)) > 0 Or _
	   Number(GUICtrlRead($TH12txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH13txtNumFlameF)) > 0 Or Number(GUICtrlRead($TH14txtNumFlameF)) > 0 Then
		$TrainFlameF = "TRAIN |FlameF     |" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft("0" & $BlankCharacters,11) & _
									     "|" & StringLeft(Number(GUICtrlRead($TH14txtNumFlameF)) & $BlankCharacters,11) & _
									     "|" & @CRLF
	Else
		$TrainFlameF = ""
	EndIf
;King
	Local $KingTrainSet[9]
	If GUICtrlRead($TH7KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH7KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH7KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH8KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH8KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH8KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH9KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH9KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH9KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH10KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH10KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH10KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH11KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH11KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH11KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH12KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH12KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH12KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH13KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH13KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH13KingCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH14KingCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH14KingCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH14KingCheckBoxRedorTime) = $GUI_CHECKED Then
		$KingTrainSet[0] = StringLeft("0" & $BlankCharacters,11)
		if GUICtrlRead($TH7KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[1] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH7KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[1] = StringLeft("2" & Number(GUICtrlRead($TH7txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH7KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[1] = StringLeft("3" & Number(GUICtrlRead($TH7txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[1] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH8KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[2] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH8KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[2] = StringLeft("2" & Number(GUICtrlRead($TH8txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH8KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[2] = StringLeft("3" & Number(GUICtrlRead($TH8txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[2] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH9KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[3] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH9KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[3] = StringLeft("2" & Number(GUICtrlRead($TH9txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH9KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[3] = StringLeft("3" & Number(GUICtrlRead($TH9txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[3] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH10KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[4] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH10KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[4] = StringLeft("2" & Number(GUICtrlRead($TH10txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH10KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[4] = StringLeft("3" & Number(GUICtrlRead($TH10txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[4] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH11KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[5] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[5] = StringLeft("2" & Number(GUICtrlRead($TH11txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[5] = StringLeft("3" & Number(GUICtrlRead($TH11txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[5] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH12KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[6] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[6] = StringLeft("2" & Number(GUICtrlRead($TH12txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[6] = StringLeft("3" & Number(GUICtrlRead($TH12txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[6] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH13KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[7] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[7] = StringLeft("2" & Number(GUICtrlRead($TH13txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[7] = StringLeft("3" & Number(GUICtrlRead($TH13txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[7] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH14KingCheckBoxRed) = $GUI_CHECKED Then
			$KingTrainSet[8] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14KingCheckBoxTime) = $GUI_CHECKED Then
			$KingTrainSet[8] = StringLeft("2" & Number(GUICtrlRead($TH14txtNumKingSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14KingCheckBoxRedorTime) = $GUI_CHECKED Then
			$KingTrainSet[8] = StringLeft("3" & Number(GUICtrlRead($TH14txtNumKingSecond)) & $BlankCharacters,11)
		Else
			$KingTrainSet[8] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		$TrainKing = "TRAIN |King       |"
		For $i = 0 To UBound($KingTrainSet) - 1
			$TrainKing = $TrainKing & $KingTrainSet[$i] & "|"
			If $i = UBound($KingTrainSet) - 1 Then
				$TrainKing = $TrainKing & @CRLF
			EndIf
		Next
	Else
		$TrainKing = ""
	EndIf
;Queen
	Local $QueenTrainSet[9]
	If GUICtrlRead($TH9QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH9QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH9QueenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH10QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH10QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH10QueenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH11QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH11QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH11QueenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH12QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH12QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH12QueenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH13QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH13QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH13QueenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH14QueenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH14QueenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH14QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		$QueenTrainSet[0] = StringLeft("0" & $BlankCharacters,11)
		$QueenTrainSet[1] = StringLeft("0" & $BlankCharacters,11)
		$QueenTrainSet[2] = StringLeft("0" & $BlankCharacters,11)
		if GUICtrlRead($TH9QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[3] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH9QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[3] = StringLeft("2" & Number(GUICtrlRead($TH9txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH9QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[3] = StringLeft("3" & Number(GUICtrlRead($TH9txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[3] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH10QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[4] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH10QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[4] = StringLeft("2" & Number(GUICtrlRead($TH10txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH10QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[4] = StringLeft("3" & Number(GUICtrlRead($TH10txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[4] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH11QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[5] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[5] = StringLeft("2" & Number(GUICtrlRead($TH11txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[5] = StringLeft("3" & Number(GUICtrlRead($TH11txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[5] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH12QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[6] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[6] = StringLeft("2" & Number(GUICtrlRead($TH12txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[6] = StringLeft("3" & Number(GUICtrlRead($TH12txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[6] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH13QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[7] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[7] = StringLeft("2" & Number(GUICtrlRead($TH13txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[7] = StringLeft("3" & Number(GUICtrlRead($TH13txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[7] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH14QueenCheckBoxRed) = $GUI_CHECKED Then
			$QueenTrainSet[8] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14QueenCheckBoxTime) = $GUI_CHECKED Then
			$QueenTrainSet[8] = StringLeft("2" & Number(GUICtrlRead($TH14txtNumQueenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14QueenCheckBoxRedorTime) = $GUI_CHECKED Then
			$QueenTrainSet[8] = StringLeft("3" & Number(GUICtrlRead($TH14txtNumQueenSecond)) & $BlankCharacters,11)
		Else
			$QueenTrainSet[8] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		$TrainQueen = "TRAIN |Queen      |"
		For $i = 0 To UBound($QueenTrainSet) - 1
			$TrainQueen = $TrainQueen & $QueenTrainSet[$i] & "|"
			If $i = UBound($QueenTrainSet) - 1 Then
				$TrainQueen = $TrainQueen & @CRLF
			EndIf
		Next
	Else
		$TrainQueen = ""
	EndIf
;Warden
	Local $WardenTrainSet[9]
	If GUICtrlRead($TH11WardenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH11WardenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH11WardenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH12WardenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH12WardenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH12WardenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH13WardenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH13WardenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH13WardenCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH14WardenCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH14WardenCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH14WardenCheckBoxRedorTime) = $GUI_CHECKED Then
		$WardenTrainSet[0] = StringLeft("0" & $BlankCharacters,11)
		$WardenTrainSet[1] = StringLeft("0" & $BlankCharacters,11)
		$WardenTrainSet[2] = StringLeft("0" & $BlankCharacters,11)
		$WardenTrainSet[3] = StringLeft("0" & $BlankCharacters,11)
		$WardenTrainSet[4] = StringLeft("0" & $BlankCharacters,11)
		if GUICtrlRead($TH11WardenCheckBoxRed) = $GUI_CHECKED Then
			$WardenTrainSet[5] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11WardenCheckBoxTime) = $GUI_CHECKED Then
			$WardenTrainSet[5] = StringLeft("2" & Number(GUICtrlRead($TH11txtNumWardenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH11WardenCheckBoxRedorTime) = $GUI_CHECKED Then
			$WardenTrainSet[5] = StringLeft("3" & Number(GUICtrlRead($TH11txtNumWardenSecond)) & $BlankCharacters,11)
		Else
			$WardenTrainSet[5] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH12WardenCheckBoxRed) = $GUI_CHECKED Then
			$WardenTrainSet[6] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12WardenCheckBoxTime) = $GUI_CHECKED Then
			$WardenTrainSet[6] = StringLeft("2" & Number(GUICtrlRead($TH12txtNumWardenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12WardenCheckBoxRedorTime) = $GUI_CHECKED Then
			$WardenTrainSet[6] = StringLeft("3" & Number(GUICtrlRead($TH12txtNumWardenSecond)) & $BlankCharacters,11)
		Else
			$WardenTrainSet[6] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH13WardenCheckBoxRed) = $GUI_CHECKED Then
			$WardenTrainSet[7] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13WardenCheckBoxTime) = $GUI_CHECKED Then
			$WardenTrainSet[7] = StringLeft("2" & Number(GUICtrlRead($TH13txtNumWardenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13WardenCheckBoxRedorTime) = $GUI_CHECKED Then
			$WardenTrainSet[7] = StringLeft("3" & Number(GUICtrlRead($TH13txtNumWardenSecond)) & $BlankCharacters,11)
		Else
			$WardenTrainSet[7] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH14WardenCheckBoxRed) = $GUI_CHECKED Then
			$WardenTrainSet[8] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14WardenCheckBoxTime) = $GUI_CHECKED Then
			$WardenTrainSet[8] = StringLeft("2" & Number(GUICtrlRead($TH14txtNumWardenSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14WardenCheckBoxRedorTime) = $GUI_CHECKED Then
			$WardenTrainSet[8] = StringLeft("3" & Number(GUICtrlRead($TH14txtNumWardenSecond)) & $BlankCharacters,11)
		Else
			$WardenTrainSet[8] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		$TrainWarden = "TRAIN |Warden     |"
		For $i = 0 To UBound($WardenTrainSet) - 1
			$TrainWarden = $TrainWarden & $WardenTrainSet[$i] & "|"
			If $i = UBound($WardenTrainSet) - 1 Then
				$TrainWarden = $TrainWarden & @CRLF
			EndIf
		Next
	Else
		$TrainWarden = ""
	EndIf
;Royale Champion
	Local $RoyaleCTrainSet[9]
	If GUICtrlRead($TH11RoyaleCCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH11RoyaleCCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH11RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH12RoyaleCCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH12RoyaleCCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH12RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH13RoyaleCCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH13RoyaleCCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH13RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Or _
	   GUICtrlRead($TH14RoyaleCCheckBoxRed) = $GUI_CHECKED Or GUICtrlRead($TH14RoyaleCCheckBoxTime) = $GUI_CHECKED Or GUICtrlRead($TH14RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
		$RoyaleCTrainSet[0] = StringLeft("0" & $BlankCharacters,11)
		$RoyaleCTrainSet[1] = StringLeft("0" & $BlankCharacters,11)
		$RoyaleCTrainSet[2] = StringLeft("0" & $BlankCharacters,11)
		$RoyaleCTrainSet[3] = StringLeft("0" & $BlankCharacters,11)
		$RoyaleCTrainSet[4] = StringLeft("0" & $BlankCharacters,11)
		$RoyaleCTrainSet[5] = StringLeft("0" & $BlankCharacters,11)
		if GUICtrlRead($TH12RoyaleCCheckBoxRed) = $GUI_CHECKED Then
			$RoyaleCTrainSet[6] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12RoyaleCCheckBoxTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[6] = StringLeft("2" & Number(GUICtrlRead($TH12txtNumRoyaleCSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH12RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[6] = StringLeft("3" & Number(GUICtrlRead($TH12txtNumRoyaleCSecond)) & $BlankCharacters,11)
		Else
			$RoyaleCTrainSet[6] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH13RoyaleCCheckBoxRed) = $GUI_CHECKED Then
			$RoyaleCTrainSet[7] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13RoyaleCCheckBoxTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[7] = StringLeft("2" & Number(GUICtrlRead($TH13txtNumRoyaleCSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH13RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[7] = StringLeft("3" & Number(GUICtrlRead($TH13txtNumRoyaleCSecond)) & $BlankCharacters,11)
		Else
			$RoyaleCTrainSet[7] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		if GUICtrlRead($TH14RoyaleCCheckBoxRed) = $GUI_CHECKED Then
			$RoyaleCTrainSet[8] = StringLeft("1" & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14RoyaleCCheckBoxTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[8] = StringLeft("2" & Number(GUICtrlRead($TH14txtNumRoyaleCSecond)) & $BlankCharacters,11)
		ElseIf GUICtrlRead($TH14RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
			$RoyaleCTrainSet[8] = StringLeft("3" & Number(GUICtrlRead($TH14txtNumRoyaleCSecond)) & $BlankCharacters,11)
		Else
			$RoyaleCTrainSet[8] = StringLeft("0" & $BlankCharacters,11)
		EndIf
		$TrainRoyaleC = "TRAIN |Champion   |"
		For $i = 0 To UBound($RoyaleCTrainSet) - 1
			$TrainRoyaleC = $TrainRoyaleC & $RoyaleCTrainSet[$i] & "|"
			If $i = UBound($RoyaleCTrainSet) - 1 Then
				$TrainRoyaleC = $TrainRoyaleC & @CRLF
			EndIf
		Next
	Else
		$TrainRoyaleC = ""
	EndIf

	$TrainCSVWrite =  $TrainBarb & $TrainSBarb & $TrainArcher & $TrainSArcher & $TrainGiant & $TrainSGiant & $TrainGoblin & $TrainSGoblin & _
					  $TrainWallB & $TrainSWallB & $TrainBalloon & $TrainRBalloon & $TrainWizard & $TrainSWizard & $TrainHealer & $TrainDragon & _
					  $TrainSDragon & $TrainIDragon & $TrainPekka & $TrainBabyDragon & $TrainMiner & $TrainEdrag & $TrainYeti & $TrainDragonR & $TrainMini & _
					  $TrainSMini & $TrainHogsRider & $TrainValkyre & $TrainSValkyre & $TrainGolem & $TrainWitch & $TrainSWitch & $TrainLava & _
					  $TrainIHound & $TrainBowler & $TrainSBowler & $TrainIceGolem & $TrainHunter & $TrainLSpell & $TrainHSpell & $TrainRSpell & _
					  $TrainJSpell & $TrainFSpell & $TrainCSpell & $TrainISpell & $TrainPSpell & $TrainESpell & $TrainHaSpell & $TrainSkSpell & $TrainBaSpell & _
					  $TrainBattleB & $TrainWallw & $TrainStoneS & $TrainSiegeB & $TrainLogL & $TrainKing & $TrainQueen & $TrainWarden & _
					  $TrainRoyaleC
EndFunc

Func GetRequestCC()
	Local $CCRequestSet[9]
	Local $CCRequestHeadSet[9]

 	If String(GUICtrlRead($TH6RequestCCInbox)) <> "" Or String(GUICtrlRead($TH7RequestCCInbox)) <> "" Or String(GUICtrlRead($TH8RequestCCInbox)) <> "" Or _
	   String(GUICtrlRead($TH9RequestCCInbox)) <> "" Or String(GUICtrlRead($TH10RequestCCInbox)) <> "" Or String(GUICtrlRead($TH11RequestCCInbox)) <> "" Or _
	   String(GUICtrlRead($TH12RequestCCInbox)) <> "" Or String(GUICtrlRead($TH13RequestCCInbox)) <> "" Or String(GUICtrlRead($TH14RequestCCInbox)) <> "" Then
		If String(GUICtrlRead($TH6RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[0] = "_________TH6_________|"
			$CCRequestSet[0] = StringLeft(String(GUICtrlRead($TH6RequestCCInbox)) & $BlankCharacters,21)
		Else
			$CCRequestHeadSet[0] = "____TH6____|"
			$CCRequestSet[0] = StringLeft(String(GUICtrlRead($TH6RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH7RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[1] = "_________TH7_________|"
			$CCRequestSet[1] = StringLeft(String(GUICtrlRead($TH7RequestCCInbox)) & $BlankCharacters,21)
		Else
			$CCRequestHeadSet[1] = "____TH7____|"
			$CCRequestSet[1] = StringLeft(String(GUICtrlRead($TH7RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH8RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[2] = "_________TH8_________|"
			$CCRequestSet[2] = StringLeft(String(GUICtrlRead($TH8RequestCCInbox)) & $BlankCharacters,21)
		Else
			$CCRequestHeadSet[2] = "____TH8____|"
			$CCRequestSet[2] = StringLeft(String(GUICtrlRead($TH8RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH9RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[3] = "_________TH9_________|"
			$CCRequestSet[3] = StringLeft(String(GUICtrlRead($TH9RequestCCInbox)) & $BlankCharacters,21)
		Else
			$CCRequestHeadSet[3] = "____TH9____|"
			$CCRequestSet[3] = StringLeft(String(GUICtrlRead($TH9RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH10RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[4] = "_________TH10_________|"
			$CCRequestSet[4] = StringLeft(String(GUICtrlRead($TH10RequestCCInbox)) & $BlankCharacters,22)
		Else
			$CCRequestHeadSet[4] = "____TH10___|"
			$CCRequestSet[4] = StringLeft(String(GUICtrlRead($TH10RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH11RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[5] = "_________TH11_________|"
			$CCRequestSet[5] = StringLeft(String(GUICtrlRead($TH11RequestCCInbox)) & $BlankCharacters,22)
		Else
			$CCRequestHeadSet[5] = "____TH11___|"
			$CCRequestSet[5] = StringLeft(String(GUICtrlRead($TH11RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH12RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[6] = "_________TH12_________|"
			$CCRequestSet[6] = StringLeft(String(GUICtrlRead($TH12RequestCCInbox)) & $BlankCharacters,22)
		Else
			$CCRequestHeadSet[6] = "____TH12___|"
			$CCRequestSet[6] = StringLeft(String(GUICtrlRead($TH12RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH13RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[7] = "_________TH13_________|"
			$CCRequestSet[7] = StringLeft(String(GUICtrlRead($TH13RequestCCInbox)) & $BlankCharacters,22)
		Else
			$CCRequestHeadSet[7] = "____TH13___|"
			$CCRequestSet[7] = StringLeft(String(GUICtrlRead($TH13RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		If String(GUICtrlRead($TH14RequestCCInbox)) <> "" Then
			$CCRequestHeadSet[8] = "_________TH14_________|"
			$CCRequestSet[8] = StringLeft(String(GUICtrlRead($TH14RequestCCInbox)) & $BlankCharacters,22)
		Else
			$CCRequestHeadSet[8] = "____TH14___|"
			$CCRequestSet[8] = StringLeft(String(GUICtrlRead($TH14RequestCCInbox)) & $BlankCharacters,11)
		EndIf
		$CCRequestCSVEnter = "      |___________|"
		$CCRequestCSVWrite = "CCREQ |           |"
		For $i = 0 To UBound($CCRequestSet) - 1
			$CCRequestCSVWrite = $CCRequestCSVWrite & $CCRequestSet[$i] & "|"
			If $i = UBound($CCRequestSet) - 1 Then
				$CCRequestCSVWrite = $CCRequestCSVWrite & @CRLF
			EndIf
		Next
		For $i = 0 To UBound($CCRequestHeadSet) - 1
			$CCRequestCSVEnter = $CCRequestCSVEnter & $CCRequestHeadSet[$i]
			If $i = UBound($CCRequestSet) - 1 Then
				$CCRequestCSVEnter = $CCRequestCSVEnter & @CRLF
			EndIf
		Next
	Else
		$CCRequestCSVEnter = ""
		$CCRequestCSVWrite = ""
	EndIf

EndFunc

Func ShowTrainMenu()
	GUICtrlSetState($OpenTrain,$GUI_HIDE)
	GUICtrlSetState($CloseTrain,$GUI_SHOW)
	GUICtrlSetState($LabelHis,$GUI_HIDE)
	For $i=$MainGoldStoragePic to $OffExpertRadio
		GUICtrlSetState($i,$GUI_HIDE)
    Next
	GUICtrlSetState($MainInfoPic,$GUI_HIDE)
	GUICtrlSetState($MainPic,$GUI_HIDE)
	GUICtrlSetState($Traininfo,$GUI_SHOW)
	GUICtrlSetState($TrainBackGround,$GUI_SHOW)
	GUICtrlSetState($Start,$GUI_DISABLE)

	For $i=$TrainSelectTH6Click to $TrainSelectTH14Click
		GUICtrlSetState($i,$GUI_SHOW)
    Next

   $ShowTrainTH6GuiIS = 0
   $ShowTrainTH7GuiIS = 0
   $ShowTrainTH8GuiIS = 0
   $ShowTrainTH9GuiIS = 0
   $ShowTrainTH10GuiIS = 0
   $ShowTrainTH11GuiIS = 0
   $ShowTrainTH12GuiIS = 0
   $ShowTrainTH13GuiIS = 0
   $ShowTrainTH14GuiIS = 1
   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		ShowTrainTH14()
   EndIf
EndFunc

Func SaveandExitTrainMenu()
	If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
	ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
	ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
	ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
	ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
	ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
	ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
	ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
	ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
	EndIf
	$ShowTrainTH6GuiIS = 0
	$ShowTrainTH7GuiIS = 0
	$ShowTrainTH8GuiIS = 0
	$ShowTrainTH9GuiIS = 0
	$ShowTrainTH10GuiIS = 0
	$ShowTrainTH11GuiIS = 0
	$ShowTrainTH12GuiIS = 0
	$ShowTrainTH13GuiIS = 0
	$ShowTrainTH14GuiIS = 0
	GUICtrlSetState($TrainBackGround,$GUI_HIDE)
	For $i=$TrainSelectTH6Click to $TrainSelectTH14Click
		GUICtrlSetState($i,$GUI_HIDE)
	Next
	GUICtrlSetState($Traininfo,$GUI_HIDE)
	GUICtrlSetState($MainPic,$GUI_SHOW)
	GUICtrlSetState($MainInfoPic,$GUI_SHOW)
	For $i=$MainGoldStoragePic to $DarkElixirCollectorCheckBox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
	For $i=$MainTHPic to $AirDeffanceCheckBox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
	For $i=$MainScaterPic to $AirSweeperCheckBox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
	For $i=$MainLeftFrontPic to $OffExpertRadio
		GUICtrlSetState($i,$GUI_SHOW)
	Next
	ExpertONorOFF()
	GUICtrlSetState($Start,$GUI_ENABLE)
	GUICtrlSetState($OpenTrain,$GUI_SHOW)
	GUICtrlSetState($CloseTrain,$GUI_HIDE)
	GUICtrlSetState($LabelHis,$GUI_SHOW)
EndFunc

Func ShowOnlyTH6()
   If $ShowTrainTH6GuiIS = 1 Then
	  ShowTrainTH6()
   EndIf

   If $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH6()
   $ShowTrainTH6GuiIS = 1

EndFunc

Func ShowOnlyTH7()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH7()
   $ShowTrainTH7GuiIS = 1

EndFunc

Func ShowOnlyTH8()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH8()
   $ShowTrainTH8GuiIS = 1

EndFunc

Func ShowOnlyTH9()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH9()
   $ShowTrainTH9GuiIS = 1

EndFunc

Func ShowOnlyTH10()


   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH10()
   $ShowTrainTH10GuiIS = 1

EndFunc


Func ShowOnlyTH11()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH11()
   $ShowTrainTH11GuiIS = 1

EndFunc

Func ShowOnlyTH12()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH12()
   $ShowTrainTH12GuiIS = 1

EndFunc

Func ShowOnlyTH13()

   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
		$ShowTrainTH14GuiIS = 0

   EndIf

   ShowTrainTH13()
   $ShowTrainTH13GuiIS = 1

EndFunc

Func ShowOnlyTH14()


   If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
		$ShowTrainTH6GuiIS = 0

	  ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
		$ShowTrainTH7GuiIS = 0

	  ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
		$ShowTrainTH8GuiIS = 0

	  ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
		$ShowTrainTH9GuiIS = 0

	  ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
		$ShowTrainTH10GuiIS = 0

	  ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
		$ShowTrainTH11GuiIS = 0

	  ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
		$ShowTrainTH12GuiIS = 0

	  ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
		$ShowTrainTH13GuiIS = 0

   EndIf


   ShowTrainTH14()
   $ShowTrainTH14GuiIS = 1

EndFunc

Func ShowTrainTH6()
   $ShowTrainTH6GuiIS = 1
   	For $i=$TH6 to $TH6RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH6()
   $ShowTrainTH6GuiIS = 0
	For $i=$TH6 to $TH6RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH7()
   $ShowTrainTH7GuiIS = 1
	For $i=$TH7 to $TH7RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH7()
   $ShowTrainTH7GuiIS = 0
	For $i=$TH7 to $TH7RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH8()
   $ShowTrainTH8GuiIS = 1
	For $i=$TH8 to $TH8RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH8()
   $ShowTrainTH8GuiIS = 0
	For $i=$TH8 to $TH8RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH9()
   $ShowTrainTH9GuiIS = 1
	For $i=$TH9 to $TH9RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH9()
   $ShowTrainTH9GuiIS = 0
	For $i=$TH9 to $TH9RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH10()
   $ShowTrainTH10GuiIS = 1
	For $i=$TH10 to $TH10RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH10()
   $ShowTrainTH10GuiIS = 0
	For $i=$TH10 to $TH10RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH11()
   $ShowTrainTH11GuiIS = 1
	For $i=$TH11 to $TH11RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH11()
   $ShowTrainTH11GuiIS = 0
	For $i=$TH11 to $TH11RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH12()
   $ShowTrainTH12GuiIS = 1
	For $i=$TH12 to $TH12RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH12()
   $ShowTrainTH12GuiIS = 0
	For $i=$TH12 to $TH12RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH13()
   $ShowTrainTH13GuiIS = 1
	For $i=$TH13 to $TH13RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH13()
   $ShowTrainTH13GuiIS = 0
	For $i=$TH13 to $TH13RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc
Func ShowTrainTH14()
   $ShowTrainTH14GuiIS = 1
	For $i=$TH14 to $TH14RequestCCInbox
		GUICtrlSetState($i,$GUI_SHOW)
	Next
EndFunc
Func HideTrainTH14()
   $ShowTrainTH14GuiIS = 0
	For $i=$TH14 to $TH14RequestCCInbox
		GUICtrlSetState($i,$GUI_HIDE)
	Next
EndFunc


Func TH7KingControlRed()
	GUICtrlSetState($TH7KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH7KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH7KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH7txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH7txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH7KingControlTime()
	GUICtrlSetState($TH7KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH7KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH7KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH7txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH7KingControlRedorTime()
	GUICtrlSetState($TH7KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH7KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH7KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH7txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH8KingControlRed()
	GUICtrlSetState($TH8KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH8KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH8KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH8txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH8txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH8KingControlTime()
	GUICtrlSetState($TH8KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH8KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH8KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH8txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH8KingControlRedorTime()
	GUICtrlSetState($TH8KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH8KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH8KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH8txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH9KingControlRed()
	GUICtrlSetState($TH9KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH9KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH9txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH9KingControlTime()
	GUICtrlSetState($TH9KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH9KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH9KingControlRedorTime()
	GUICtrlSetState($TH9KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH9KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH10KingControlRed()
	GUICtrlSetState($TH10KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH10KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH10txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH10KingControlTime()
	GUICtrlSetState($TH10KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH10KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH10KingControlRedorTime()
	GUICtrlSetState($TH10KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH10KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH11KingControlRed()
	GUICtrlSetState($TH11KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH11KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH11txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH11KingControlTime()
	GUICtrlSetState($TH11KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH11KingControlRedorTime()
	GUICtrlSetState($TH11KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12KingControlRed()
	GUICtrlSetState($TH12KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH12KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH12txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH12KingControlTime()
	GUICtrlSetState($TH12KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12KingControlRedorTime()
	GUICtrlSetState($TH12KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13KingControlRed()
	GUICtrlSetState($TH13KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH13KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH13txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH13KingControlTime()
	GUICtrlSetState($TH13KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13KingControlRedorTime()
	GUICtrlSetState($TH13KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14KingControlRed()
	GUICtrlSetState($TH14KingCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH14KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14KingCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumKingSecond, $GUI_DISABLE)
		GUICtrlSetData($TH14txtNumKingSecond, 0)
	EndIf
EndFunc
Func TH14KingControlTime()
	GUICtrlSetState($TH14KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14KingCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14KingCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14KingControlRedorTime()
	GUICtrlSetState($TH14KingCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14KingCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14KingCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumKingSecond, $GUI_ENABLE)
	EndIf
EndFunc

Func TH9QueenControlRed()
	GUICtrlSetState($TH9QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH9QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH9txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH9QueenControlTime()
	GUICtrlSetState($TH9QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH9QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH9QueenControlRedorTime()
	GUICtrlSetState($TH9QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH9QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH9QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH9txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH10QueenControlRed()
	GUICtrlSetState($TH10QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH10QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH10txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH10QueenControlTime()
	GUICtrlSetState($TH10QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH10QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH10QueenControlRedorTime()
	GUICtrlSetState($TH10QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH10QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH10QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH10txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH11QueenControlRed()
	GUICtrlSetState($TH11QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH11QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH11txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH11QueenControlTime()
	GUICtrlSetState($TH11QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH11QueenControlRedorTime()
	GUICtrlSetState($TH11QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12QueenControlRed()
	GUICtrlSetState($TH12QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH12QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH12txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH12QueenControlTime()
	GUICtrlSetState($TH12QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12QueenControlRedorTime()
	GUICtrlSetState($TH12QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13QueenControlRed()
	GUICtrlSetState($TH13QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH13QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH13txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH13QueenControlTime()
	GUICtrlSetState($TH13QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13QueenControlRedorTime()
	GUICtrlSetState($TH13QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14QueenControlRed()
	GUICtrlSetState($TH14QueenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH14QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14QueenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumQueenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH14txtNumQueenSecond, 0)
	EndIf
EndFunc
Func TH14QueenControlTime()
	GUICtrlSetState($TH14QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14QueenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14QueenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14QueenControlRedorTime()
	GUICtrlSetState($TH14QueenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14QueenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14QueenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumQueenSecond, $GUI_ENABLE)
	EndIf
EndFunc

Func TH11WardenControlRed()
	GUICtrlSetState($TH11WardenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH11WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11WardenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumWardenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH11txtNumWardenSecond, 0)
	EndIf
EndFunc
Func TH11WardenControlTime()
	GUICtrlSetState($TH11WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11WardenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH11WardenControlRedorTime()
	GUICtrlSetState($TH11WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH11WardenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH11WardenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH11txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12WardenControlRed()
	GUICtrlSetState($TH12WardenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH12WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12WardenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumWardenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH12txtNumWardenSecond, 0)
	EndIf
EndFunc
Func TH12WardenControlTime()
	GUICtrlSetState($TH12WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12WardenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12WardenControlRedorTime()
	GUICtrlSetState($TH12WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12WardenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12WardenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13WardenControlRed()
	GUICtrlSetState($TH13WardenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH13WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13WardenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumWardenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH13txtNumWardenSecond, 0)
	EndIf
EndFunc
Func TH13WardenControlTime()
	GUICtrlSetState($TH13WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13WardenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13WardenControlRedorTime()
	GUICtrlSetState($TH13WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13WardenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13WardenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14WardenControlRed()
	GUICtrlSetState($TH14WardenCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH14WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14WardenCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumWardenSecond, $GUI_DISABLE)
		GUICtrlSetData($TH14txtNumWardenSecond, 0)
	EndIf
EndFunc
Func TH14WardenControlTime()
	GUICtrlSetState($TH14WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14WardenCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14WardenCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14WardenControlRedorTime()
	GUICtrlSetState($TH14WardenCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14WardenCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14WardenCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumWardenSecond, $GUI_ENABLE)
	EndIf
EndFunc

Func TH12RoyaleCControlRed()
	GUICtrlSetState($TH12RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH12RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12RoyaleCCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumRoyaleCSecond, $GUI_DISABLE)
		GUICtrlSetData($TH12txtNumRoyaleCSecond, 0)
	EndIf
EndFunc
Func TH12RoyaleCControlTime()
	GUICtrlSetState($TH12RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12RoyaleCCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH12RoyaleCControlRedorTime()
	GUICtrlSetState($TH12RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH12RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH12RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH12txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH7RoyaleCControlRed()
	GUICtrlSetState($TH13RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH13RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13RoyaleCCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumRoyaleCSecond, $GUI_DISABLE)
		GUICtrlSetData($TH13txtNumRoyaleCSecond, 0)
	EndIf
EndFunc
Func TH13RoyaleCControlTime()
	GUICtrlSetState($TH13RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13RoyaleCCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH13RoyaleCControlRedorTime()
	GUICtrlSetState($TH13RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH13RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH13RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH13txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14RoyaleCControlRed()
	GUICtrlSetState($TH14RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	GUICtrlSetState($TH14RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14RoyaleCCheckBoxRed) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumRoyaleCSecond, $GUI_DISABLE)
		GUICtrlSetData($TH14txtNumRoyaleCSecond, 0)
	EndIf
EndFunc
Func TH14RoyaleCControlTime()
	GUICtrlSetState($TH14RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14RoyaleCCheckBoxRedorTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14RoyaleCCheckBoxTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc
Func TH14RoyaleCControlRedorTime()
	GUICtrlSetState($TH14RoyaleCCheckBoxRed, $GUI_UNCHECKED)
	GUICtrlSetState($TH14RoyaleCCheckBoxTime, $GUI_UNCHECKED)
	If GUICtrlRead($TH14RoyaleCCheckBoxRedorTime) = $GUI_CHECKED Then
		GUICtrlSetState($TH14txtNumRoyaleCSecond, $GUI_ENABLE)
	EndIf
EndFunc

