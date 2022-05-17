; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Cursor Control
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

Func WM_SETCURSOR($hWnd, $iMsg, $wParam, $lParam)
    #forceref $iMsg, $wParam, $lParam

    Switch $hWnd
        Case $GUI_CSV_in_function

            Local $aCursor = GUIGetCursorInfo($GUI_CSV_in_function)

            If (Not @error) And ($aCursor[4] = $troops_pic) Then
                _WinAPI_SetCursor($g_hCursor)
                Return 0
            EndIf
            If (Not @error) And ($aCursor[4] = $troops_picmulti) Then
                _WinAPI_SetCursor($g_hCursor)
                Return 0
            EndIf
            If (Not @error) And ($aCursor[4] = $g_hCSVMakerMainButton) Then
                _WinAPI_SetCursor($g_hCursor)
                Return 0
            EndIf
    EndSwitch
    Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SETCURSOR
Func WM_SETCURSORSPELL($hWnd, $iMsg, $wParam, $lParam)
    #forceref $iMsg, $wParam, $lParam

    Switch $hWnd
        Case $GUI_CSV_in_function

            Local $aCursor = GUIGetCursorInfo($GUI_CSV_in_function)

            If (Not @error) And ($aCursor[4] = $troops_pic) Then
                _WinAPI_SetCursor($g_hCursor)
                Return 0
            EndIf
    EndSwitch
    Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SETCURSOR
Func OnAutoItExit()
    _WinAPI_DestroyCursor($g_hCursor)
EndFunc   ;==>OnAutoItExit

