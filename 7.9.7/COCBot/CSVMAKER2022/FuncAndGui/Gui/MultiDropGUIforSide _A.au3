; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI for Side _A
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
; ===============================================================================================================================

Func _GUICreateMultiDropforA($title, $width, $height, $left = -1, $top = -1, $style = -1, $exStyle = -1, $parent = 0)
   $GUI_MultiDropforA_in_function = GUICreate($title, $width, $height, $left, $top, $style, $exStyle, $parent)
   GUISetBkColor(0xFFFF99,$GUI_MultiDropforA_in_function)
   Local $key = String($GUI_MultiDropforA_in_function)
   Local $obj = $GUI_MultiDropforA_in_function
   $g_oGuiNotInMini.Add($key, $obj)
   GUISetIcon("csv.ico")
   Return $GUI_MultiDropforA_in_function
 EndFunc   ;==>_GUICreateMultiDropforA

Func GUI_MultiDropforA()

;~ Left Part of Gui
   $h_hGUI_MakeMultiDropforA = _GUICreateMultiDropforA("Multi Drop For Part A", 660, 555, @DesktopWidth/2-660/2, @DesktopHeight/2-555/2, $WS_BORDER, $WS_EX_CONTROLPARENT)
   Local $x, $y
   $x = 15
   $y = 20
   $GroupForRandomPointforAShow = GUICtrlCreateGroup("Multi Mixed Points in Order", $x - 5, $y, 390, 470)
   DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($GroupForRandomPointforAShow), "wstr", 0, "wstr", 0)
   GUICtrlSetFont(-1, 9,$FW_BOLD,Default,"arial",$CLEARTYPE_QUALITY)
   GUICtrlSetColor(-1,0x808000)
   GUICtrlCreateGroup("", -99, -99, 1, 1)
   $x = 15
   $y = 40
   $GroupForRandomPointforA = GUICtrlCreateGroup("", $x + 10000000000, $y, 393, 393)
   $RadioForRandomforA = GUICtrlCreateRadio("", $x + 5, $y + 1 , 17, 17)
   GUICtrlSetTip(-1, "You can add mixed point up to ten quantity in order and for your CSV File")
   GUICtrlSetOnEvent($RadioForRandomforA,"ChooseMixedGuiforA")
   GUICtrlSetState(-1,$GUI_CHECKED)
   $RadioForLineforA= GUICtrlCreateRadio("", $x + 410, $y + 1 , 17, 17)
   GUICtrlSetTip(-1, "You can drop straightly limited quantity troop in order for your CSV File")
   GUICtrlSetOnEvent($RadioForLineforA,"ChooseLineGuiforA")
   $LblRandom1forA = GUICtrlCreateLabel("Let bot drop my " & $LOGName & "(s)", $x + 25, $y + 3, 300, 20)
   $LblRandom2forA = GUICtrlCreateLabel("in order...", $x + 20, $y + 23, 70, 20)
   $y = $y + 15
   $x = $x + 1
   $Lbl1forA = GUICtrlCreateLabel("1st Point is : ", $x, $y + 30, 65, 20)
   GUICtrlSetTip(-1, "Choose your 1st point to drop")
   $Lbl2forA = GUICtrlCreateLabel("2nd Point is : ", $x, $y + 70, 65, 20)
   GUICtrlSetTip(-1, "Choose your 2nd point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl3forA = GUICtrlCreateLabel("3rd Point is : ", $x, $y + 110, 65, 20)
   GUICtrlSetTip(-1, "Choose your 3rd point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl4forA = GUICtrlCreateLabel("4th Point is : ", $x, $y + 150, 65, 20)
   GUICtrlSetTip(-1, "Choose your 4th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl5forA = GUICtrlCreateLabel("5th Point is : ", $x, $y + 190, 65, 20)
   GUICtrlSetTip(-1, "Choose your 5th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl6forA = GUICtrlCreateLabel("6th Point is : ", $x, $y + 230, 65, 20)
   GUICtrlSetTip(-1, "Choose your 6th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl7forA = GUICtrlCreateLabel("7th Point is : ", $x, $y + 270, 65, 20)
   GUICtrlSetTip(-1, "Choose your 7th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl8forA = GUICtrlCreateLabel("8th Point is : ", $x, $y + 310, 65, 20)
   GUICtrlSetTip(-1, "Choose your 8th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl9forA = GUICtrlCreateLabel("9th Point is : ", $x, $y + 350, 65, 20)
   GUICtrlSetTip(-1, "Choose your 9th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl10forA = GUICtrlCreateLabel("10th Point is : ", $x, $y + 390 , 65, 20)
   GUICtrlSetTip(-1, "Choose your 10th point to drop")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $y = $y + 20
   $Lbl11forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 30, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl12forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 70, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl13forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 110, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl14forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 150, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl15forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 190, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl16forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 230, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl17forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 270, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl18forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 310, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl19forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 350, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl20forA = GUICtrlCreateLabel(" then sleep for next, between : ", $x, $y + 390, 150, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = $x + 155
   $1stPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 30, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $2ndPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 70, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $3rdPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 110, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $4thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 150, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $5thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 190, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $6thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 230, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $7thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 270, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $8thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 310, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $9thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 350, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $10thPointLowerSleepforA = GUICtrlCreateInput("50", $x, $y + 390, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = $x + 45
   $Lbl21forA = GUICtrlCreateLabel("-", $x, $y + 30, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl22forA = GUICtrlCreateLabel("-", $x, $y + 70, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl23forA = GUICtrlCreateLabel("-", $x, $y + 110, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl24forA = GUICtrlCreateLabel("-", $x, $y + 150, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl25forA = GUICtrlCreateLabel("-", $x, $y + 190, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl26forA = GUICtrlCreateLabel("-", $x, $y + 230, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   $Lbl27forA = GUICtrlCreateLabel("-", $x, $y + 270, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl28forA = GUICtrlCreateLabel("-", $x, $y + 310, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl29forA = GUICtrlCreateLabel("-", $x, $y + 350, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl30forA = GUICtrlCreateLabel("-", $x, $y + 390, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = $x + 10
   $1stPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 30, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $2ndPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 70, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $3rdPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 110, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $4thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 150, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $5thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 190, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $6thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 230, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $7thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 270, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $8thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 310, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $9thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 350, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $10thPointUpperSleepforA = GUICtrlCreateInput("70", $x, $y + 390, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = $x + 45
   $Lbl31forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 30, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl32forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 70, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl33forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 110, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl34forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 150, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl35forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 190, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl36forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 230, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl37forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 270, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl38forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 310, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl39forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 350, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $Lbl40forA = GUICtrlCreateLabel("ms. (1000ms. = 1 sec.)", $x, $y + 390, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = 80
   $ComboMultiDrop1stPointforA = GUICtrlCreateCombo("", $x, $y + 8, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 1st point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop1stPointforA,"CheckComboMultiDrop1stPointforA")
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop2ndPointforA = GUICtrlCreateCombo("", $x, $y + 48, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 2nd point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop2ndPointforA,"CheckComboMultiDrop2ndPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop3rdPointforA = GUICtrlCreateCombo("", $x, $y + 88, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 3rd point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop3rdPointforA,"CheckComboMultiDrop3rdPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop4thPointforA = GUICtrlCreateCombo("", $x, $y + 128, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 4th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop4thPointforA,"CheckComboMultiDrop4thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop5thPointforA = GUICtrlCreateCombo("", $x, $y + 168, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 5th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop5thPointforA,"CheckComboMultiDrop5thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop6thPointforA = GUICtrlCreateCombo("", $x, $y + 208, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 6th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop6thPointforA,"CheckComboMultiDrop6thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop7thPointforA = GUICtrlCreateCombo("", $x, $y + 248, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 7th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop7thPointforA,"CheckComboMultiDrop7thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop8thPointforA = GUICtrlCreateCombo("", $x, $y + 288, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 8th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop8thPointforA,"CheckComboMultiDrop8thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop9thPointforA = GUICtrlCreateCombo("", $x, $y + 328, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 9th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop9thPointforA,"CheckComboMultiDrop9thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")
   $ComboMultiDrop10thPointforA = GUICtrlCreateCombo("", $x, $y + 368, 70, 17, $CBS_DROPDOWNLIST)
   GUICtrlSetTip(-1, "Choose your 10th point to drop")
   GUICtrlSetOnEvent($ComboMultiDrop10thPointforA,"CheckComboMultiDrop10thPointforA")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
   GUICtrlSetData(-1, "Don't Use|Point 1|Point 2|Point 3|Point 4|Point 5|Point 6|Point 7|Point 8|Point 9|Point 10|","Don't Use")

;~ Right Part of GUI
   $x = 420
   $y = 20
   $GroupforCenterCornerforAShow= GUICtrlCreateGroup("Multi Line Points in Order", $x - 5 , $y, 230, 170)
   DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($GroupforCenterCornerforAShow), "wstr", 0, "wstr", 0)
   GUICtrlSetFont(-1, 9,$FW_BOLD,Default,"arial",$CLEARTYPE_QUALITY)
   GUICtrlSetColor(-1,0x808000)
   GUICtrlCreateGroup("", -99, -99, 1, 1)
   $y = 40
   $PicforLinePointforA = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2022\USE\multilineforA.bmp", $x + 35 , $y + 160, 134, 119,$WS_BORDER)
   $PicforLineDoublePointforA = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2022\USE\multidoublelineforA.bmp", $x - 5 , $y + 160, 230, 119,$WS_BORDER)
   GUICtrlSetState(-1,$GUI_HIDE)
   $DoubleMultiDropforA = GUICtrlCreateCheckbox("", $x + 20, $y + 285, 18, 18)
   GUICtrlSetOnEvent($DoubleMultiDropforA,"CheckboxDoubleforA")
   $lblDoubleMultiDropforA = GUICtrlCreateLabel("Drop troop(s) from Side 'B' at the same time with the same settings.", $x + 41, $y + 285, 125, 42)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine1forA = GUICtrlCreateLabel("Let bot drop my ", $x + 25, $y + 3, 80, 17)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $ArmySizeinLineforA = GUICtrlCreateInput("", $x + 102, $y, 25, 20, $ES_NUMBER)
   GUICtrlSetTip(-1, "Enter your limit of troop quantity")
   GUICtrlSetLimit($ArmySizeinLineforA,3)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine2forA = GUICtrlCreateLabel($LOGName & "(s)", $x + 132, $y + 3, 120, 17)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $y = $y + 25
   $LblLine3forA = GUICtrlCreateLabel("in order between point ", $x + 20, $y, 115, 17)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $InputLineBeginingforA = GUICtrlCreateInput("", $x + 132, $y - 3, 25, 21, $ES_NUMBER)
   GUICtrlSetTip(-1, "Enter your interval of Point that your troops are droped ")
   GUICtrlSetLimit($InputLineBeginingforA,2)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine4forA = GUICtrlCreateLabel("and", $x + 163, $y, 22, 17)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $InputLineEndingforA = GUICtrlCreateInput("", $x + 186, $y - 3, 25, 21, $ES_NUMBER)
   GUICtrlSetTip(-1, "Enter your interval of Point that your troops are droped ")
   GUICtrlSetLimit($InputLineEndingforA,2)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $y = $y + 29
   $LblLine5forA = GUICtrlCreateLabel("from", $x + 20, $y, 24, 17)
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlCreateGroup("", -99, -99, 1, 1)
   $x = $x + 5
   $y = $y + 17
   $GroupforCenterCornerforA= GUICtrlCreateGroup("", $x + 10000000000, $y, 185, 265)
   $RadioCentertoCornerforA = GUICtrlCreateRadio("", $x + 50, $y - 25, 17, 17)
   GUICtrlSetState(-1,$GUI_CHECKED)
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine6forA = GUICtrlCreateLabel("center of the map to corner.", $x + 70, $y - 23, 135, 17)
   GUICtrlSetTip(-1, "Choose a direction for your interval of the points that you set")
   GUICtrlSetTip(-1, "Choose a direction for your interval of the points that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $RadioCornertoCenterforA = GUICtrlCreateRadio("", $x + 50, $y - 5, 17, 17)
   GUICtrlSetTip(-1, "Choose a direction for your interval of the points that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine7forA = GUICtrlCreateLabel("corner to center of the map", $x + 70, $y - 2, 135, 17)
   GUICtrlSetTip(-1, "Choose a direction for your interval of the points that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $x = $x + 15
   $y = $y + 20
   $LblLine8forA = GUICtrlCreateLabel("After each troop, sleep between", $x + 20, $y, 158, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $y = $y + 20
   $InputLinePointLowerSleepforA = GUICtrlCreateInput("50", $x +20, $y - 2, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine9forA = GUICtrlCreateLabel("-", $x + 65, $y, 5, 20)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $InputLinePointUpperSleepforA = GUICtrlCreateInput("70", $x + 75, $y - 2, 40, 17, $ES_NUMBER)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $LblLine10forA = GUICtrlCreateLabel("ms.", $x + 125, $y , 25, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   $y = $y + 20
   $LblLine11forA = GUICtrlCreateLabel("(1000ms. = 1 sec.)", $x + 20, $y, 115, 17)
   GUICtrlSetTip(-1, "Next troop will wait during your sleep time that you set")
   GUICtrlSetState(-1,$GUI_DISABLE)
   GUICtrlCreateGroup("", -99, -99, 1, 1)
   $x = 455
   $y = 375
   $MultiDropOkforA = GUICtrlCreateButton("OK", $x, $y, 134, 25)
   GUICtrlSetTip(-1, "Click OK button to finish setting. ")
   GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
   GUICtrlSetColor(-1, 0xFFFFFF)
   GUICtrlSetBkColor(-1, 0x008080)
   GUICtrlSetOnEvent(-1,"OkMultiDropforA")
   $MultiDropCancelforA = GUICtrlCreateButton("CANCEL", $x, $y + 40, 134, 25)
   GUICtrlSetTip(-1, "Click CANCEL button to unset all setting. Your setting date will reset after pressing")
   GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
   GUICtrlSetColor(-1, 0xFFFF00)
   GUICtrlSetBkColor(-1, 0x800000)
   GUICtrlSetOnEvent(-1,"CancelMultiDropforA")

EndFunc