; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker ADD CSV Button Control In CSV Write
; Description ...:
; Syntax ........:
; Parameters ... -: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func ADDCSV()
   $PtRadioTotal = $PtRadiowall1 + $PtRadiowall2 + $PtRadioEagle + $PtRadioInferno + $PtRadioXbow + $PtRadioWizzTower + $PtRadioAirDefense + $PtRadioTH + $PtRadioMortar + $PtRadioScatterShot
   GetQTY_X_VECT()
   GetSleepSize()
   Select
;~ 	  if user want to add wait func but try to press add csv
	  Case GUICtrlRead($CheckWait) = $GUI_CHECKED
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0x990000)
		 _GUICtrlRichEdit_AppendText($LOG,"!Atention! : 1 >>>ADD CSV button can be active after you click ADD WAIT button or you can untick WAIT checkbox to go on" & @CRLF)
		 MsgBox($MB_OK,"WAIT checkbox is ticked","If WAIT checkbox is ticked, ADD CSV button is inactive! Please click ADD WAIT button or untick WAIT checkbox.",6)
;~ 	  if user forgets choosing both drop point and AddTile at One Drop Option
	  Case $OneDropChoose = 1 And $TType = "Army" And $AddTileChoose = False And $SideNumber = 0
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0x990000)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 1 >>>Your Army is " &$LOGName& ", but you have to choose Drop Point and AddTile for attack." & @CRLF)
		 MsgBox($MB_OK,"NO DROP POINT AND AddTile SELECTED","Please choose One Point and AddTile for your " &$LOGName& ".",4)
		 $SpellSideNumber = 0
		 $SideNumber = 0
;~ 	  if user chooses drop point but forgets choosing AddTile at One Drop Option.
	  Case $OneDropChoose = 1 And $TType = "Army" And $AddTileChoose = False And $SideNumber <> 0
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0xC84D0C)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 2 >>>Bot will attack from " &$SideType& " on point " &$SideNumber& " but you didn't choose AddTile for your " &$LOGName& "." & @CRLF)
		 _GUICtrlRichEdit_AppendText($LOG,"info : >>>Each AddTile is equal one square from RedLine"& @CRLF)
		 MsgBox($MB_OK,"NO AddTile SELECTED","Please choose an AddTile for your " &$LOGName& ".",4)
		 $SpellSideNumber = 0
;~ 	  if user chooses spell but forget choosing drop point in first begining.
	  Case $TType = "Spell" And $SpellSideNumber = 0 And GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0xC84D0C)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 3 >>>Your Army is " &$LOGName& ", but you forget choosing a Drop point.." & @CRLF)
		 MsgBox($MB_OK,"NO DROP POINT SELECTED","Please choose One Drop Point for your " &$LOGName& ".",4)
		 $SpellSideNumber = 0
		 $SideNumber = 0
;~ 	  if user chooses spell "on building" but forget choosing drop point in first begining
	  Case $TType = "Spell" And GUICtrlRead($CheckBuilding) = $GUI_CHECKED And $PtRadioTotal = 0
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0xC84D0C)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 4 >>>Your Army is " &$LOGName& ", but you forget choosing a building.." & @CRLF)
		 MsgBox($MB_OK,"NO BUILDING SELECTED","Please choose one building for your " &$LOGName& ".",4)
		 $SpellSideNumber = 0
		 $SideNumber = 0
;~ 	  if user choose multimixed option but forget to choose addtile
	  Case $MultiDropChoose = 1 And $TType = "Army" And $AddTileChoose = False
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0xC84D0C)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 5 >>>Your Army is " &$LOGName& ", you set your multi drop setting correctly but, you forget choosing Addtile" & @CRLF)
		 _GUICtrlRichEdit_AppendText($LOG,"info : >>>Each AddTile is equal one square from RedLine" & @CRLF)
		 MsgBox($MB_OK,"NO ADDTILE SELECTED","Please choose ADDTILE for your " &$LOGName& "(s).",4)
;~ 	  if user forget to fill quantity of troops
	  Case $OneDropChoose = 1 And (Number(GUICtrlRead($InputBoxOnMap)) = 0 Or GUICtrlRead($InputBoxOnMap) = "")
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0xC84D0C)
		 _GUICtrlRichEdit_AppendText($LOG,"@Error No : 6 >>>Your quantity of troop box is empty. Please fill it with 1 or more." & @CRLF)
		 MsgBox($MB_OK,"MISSING QUANTTIY OF TROOP","Your quantity of troop box is empty." & @CRLF & "Please fill it with 1 or more. " & @CRLF & "Bot will drop your army with this information",6)
;~ 	  If All is RIGHT!!!!!
	   Case Else
	; Close if txt file is open
		 _KillCSV()
	; Set Log screen after Add CSV
		 AfterCSVLog()
		 _GUICtrlRichEdit_SetCharColor ( $LOG ,0x1BAB28)
		 _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
	; Calculate adding troops and size to show in GUI
		 CountUsedTroops()
		 GUICtrlSetData($TextUsedArmy,$ArmyCountTXT)
		 DropCommand() ;Add drop point to CSV file
	;Set Step List after CSV
		 Local $textinlist
		 $textinlist = "List of Drop Troops"&@CRLF
		 For $i = UBound($StepList) - 1 To 1 Step -1
			 $textinlist = $textinlist & $StepList[$i]&@CRLF
		 Next
		 GUICtrlSetData($ListofSteps,$textinlist)
	;Reset building
		 GUICtrlSetState($CheckBuilding,$GUI_UNCHECKED)
		 CheckBuildingControl()
	;Reset Sleep
		 GUICtrlSetState($Sleep,$GUI_ENABLE)
		 GUICtrlSetState($Sleep,$GUI_UNCHECKED)
		 SleepCheckControl()
	;Reset Random X and Y for Spell
		 GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
		 AddRandomXandY()
	;Reset Wait
		 GUICtrlSetState($CheckWait, $GUI_UNCHECKED)
		 CheckWaitCheckBOX()
	;Other Controls After CSVWriting
		 $FirstAdding = False ;Do not make this true. This must be false after first step!
		 GUICtrlSetState($AddCSV, $GUI_HIDE)
		 GUICtrlSetData($InputBoxOnMap,"1")
		 GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
		 GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
		 ;Multi Controls
	     If $SideType = "_A" and $MultiDropChoose = 1 Then
			CancelMultiDropforA()
		 ElseIf $SideType = "_B" and $MultiDropChoose = 1 Then
			CancelMultiDropforB()
		 ElseIf $SideType = "_C" and $MultiDropChoose = 1 Then
			CancelMultiDropforC()
		 ElseIf $SideType = "_D" and $MultiDropChoose = 1 Then
			CancelMultiDropforD()
		 ElseIf $SideType = "_E" and $MultiDropChoose = 1 Then
			CancelMultiDropforE()
		 ElseIf $SideType = "_F" and $MultiDropChoose = 1 Then
			CancelMultiDropforF()
		 ElseIf $SideType = "_G" and $MultiDropChoose = 1 Then
			CancelMultiDropforG()
		 ElseIf $SideType = "_H" and $MultiDropChoose = 1 Then
			CancelMultiDropforH()
		 EndIf

		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 $DidIdoSomethingforA = False
		 $DidIdoSomethingforB = False
		 $DidIdoSomethingforC = False
		 $DidIdoSomethingforD = False
		 $DidIdoSomethingforE = False
		 $DidIdoSomethingforF = False
		 $DidIdoSomethingforG = False
		 $DidIdoSomethingforH = False
 	;Reset Addtile
		 MakeAllDropANDAddtileButtonResetColor()
		 HideAddTile()
		 $SpellSideNumber = 0
		 $SideNumber = 0
		 GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00)
		 GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080)
  EndSelect

EndFunc

Func AfterCSVLog()
	if $TType = "Spell" Then
		If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then ;check if user  choose speel and choose "on building" option
			$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop on " & $LogBuilding
			$Comment = "1 " & $LOGName & " will drop on " & $LogBuilding & " then bot will sleep between 50-70 ms."
			If GUICtrlRead($Sleep) =  $GUI_CHECKED Then
				$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop on " & $LogBuilding & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
				$Comment = "1 " & $LOGName & " will drop on " & $LogBuilding & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
			EndIf
		ElseIf GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then ;check if user  choose speel and not choose "on building" option
			$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop from Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " Line : " & (-1*Number($AddTile)-2)/2
			$Comment = "1 " & $LOGName & " will drop from Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " Line : " & (-1*Number($AddTile)-2)/2 & " then bot will sleep between 50-70 ms."
			If GUICtrlRead($Sleep) =  $GUI_CHECKED Then
				$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop from Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " Line : " & (-1*Number($AddTile)-2)/2 & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
				$Comment = "1 " & $LOGName & " will drop from Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " Line : " & (-1*Number($AddTile)-2)/2 & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
			EndIf
		EndIf
	EndIf

	If $TType = "Army" And $OneDropChoose = 1 Then ;check if user choose army and One Drop Option
		$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop on Point : " & $SideNumber & " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.)"
		$Comment = "1 " & $LOGName & " will drop on Point : " & $SideNumber & " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.)" & " And then bot will sleep between 50-70 ms."
		If GUICtrlRead($Sleep) =  $GUI_CHECKED Then
			$LOGEnter = Number($ValueOfInputBox) & " " & $LOGName & " will drop on Point : " & $SideNumber & " from " & $SideType & " side with " & $AddTile & " AddTile and then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " ms." & @CRLF & "(1 AddTile = 1,5 Square from redline.)"
			$Comment = "1 " & $LOGName & " will drop on Point : " & $SideNumber & " from " & $SideType & " side with " & $AddTile & " AddTile and then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " ms. (1 AddTile = 1,5 Square from redline.)"
		EndIf
	ElseIf $TType = "Army" And $MultiDropChoose = 1 Then
		;UNDOLine Variable is set in LogEnterfor[Letter] functions.
		LogEnterforA()
		LogEnterforB()
		LogEnterforC()
		LogEnterforD()
		LogEnterforE()
		LogEnterforF()
		LogEnterforG()
		LogEnterforH()
	EndIf

	If $TType = "Spell" And GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
		$Comment = "1 " & $LOGName & " will drop on " & $LogBuilding & " then bot will sleep between 50-70 ms."
		If GUICtrlRead($Sleep) =  $GUI_CHECKED Then
			$Comment = "1 " & $LOGName & " will drop on " & $LogBuilding & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
		EndIf
	ElseIf $TType = "Spell" And GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		$Comment = "1 " & $LOGName & " will drop on Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " in Side : " & $SpellSideType & " Line : " & (-1*Number($AddTile)-2)/2 & " then bot will sleep between 50-70 ms."
		If GUICtrlRead($Sleep) =  $GUI_CHECKED Then
			$Comment = "1 " & $LOGName & " will drop on Point : " & Number(GUICtrlRead($GuiLastSpellPoint)) & " in Side : " & $SpellSideType & " Line : " & (-1*Number($AddTile)-2)/2 & " then bot will sleep between " & _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & " and " & _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2))) & "ms."
		EndIf
	EndIf
EndFunc
