
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

Global $Program_Name = "CSV Maker " ;PROGRAM NAME!!!!
Global $Program_Version = "v3.01"    ;PROGRAM VERSION!!! (Do not change it.. Because update is controlling with this variable)
Global $g_sSaveLocation  ;Save Location of CSV file
Global $g_lSaveLocation  ;Log Location of CSV file
Global $h_hGUI_Makedeneme, $GUI_deneme_in_function,$Pic1
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<> MULTIDROP GUI VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $h_hGUI_MakeMultiDropforA
Global $HeaderForMultiDropforA
Global $GroupForRandomPointforA,$GroupForRandomPointforAShow, $GroupforCenterCornerforA, $GroupforCenterCornerforAShow
Global $PicforRandomPointforA, $PicforLinePointforA
Global $RadioForRandomforA , $RadioForLineforA
Global $LblLine1forA, $LblLine2forA, $LblLine3forA, $LblLine4forA, $LblLine5forA, $LblLine6forA, $LblLine7forA, $LblLine8forA, $LblLine9forA, $LblLine10forA, $LblLine11forA
Global $LblRandom1forA, $LblRandom2forA
Global $ComboMultiDrop1stPointforA, $ComboMultiDrop2ndPointforA, $ComboMultiDrop3rdPointforA, $ComboMultiDrop4thPointforA, $ComboMultiDrop5thPointforA, $ComboMultiDrop6thPointforA, $ComboMultiDrop7thPointforA, $ComboMultiDrop8thPointforA, $ComboMultiDrop9thPointforA, $ComboMultiDrop10thPointforA
Global $Lbl1forA, $Lbl2forA, $Lbl3forA, $Lbl4forA, $Lbl5forA, $Lbl6forA, $Lbl7forA, $Lbl8forA, $Lbl9forA, $Lbl10forA, $Lbl11forA, $Lbl12forA, $Lbl13forA, $Lbl14forA, $Lbl15forA, $Lbl16forA, $Lbl17forA, $Lbl18forA, $Lbl19forA, $Lbl20forA
Global $Lbl21forA, $Lbl22forA, $Lbl23forA, $Lbl24forA, $Lbl25forA, $Lbl26forA, $Lbl27forA, $Lbl28forA, $Lbl29forA, $Lbl30forA, $Lbl31forA, $Lbl32forA, $Lbl33forA, $Lbl34forA, $Lbl30forA, $Lbl35forA, $Lbl36forA, $Lbl37forA, $Lbl30forA, $Lbl38forA, $Lbl39forA, $Lbl40forA
Global $1stPointLowerSleepforA, $2ndPointLowerSleepforA, $3rdPointLowerSleepforA, $4thPointLowerSleepforA, $5thPointLowerSleepforA, $6thPointLowerSleepforA, $7thPointLowerSleepforA, $8thPointLowerSleepforA, $9thPointLowerSleepforA, $10thPointLowerSleepforA
Global $1stPointUpperSleepforA, $2ndPointUpperSleepforA, $3rdPointUpperSleepforA, $4thPointUpperSleepforA, $5thPointUpperSleepforA, $6thPointUpperSleepforA, $7thPointUpperSleepforA, $8thPointUpperSleepforA, $9thPointUpperSleepforA, $10thPointUpperSleepforA
Global $ArmySizeinLineforA
Global $InputLineBeginingforA, $InputLineEndingforA
Global $RadioCentertoCornerforA, $RadioCornertoCenterforA
Global $InputLinePointLowerSleepforA, $InputLinePointUpperSleepforA
Global $DoubleMultiDropforA, $lblDoubleMultiDropforA, $PicforLineDoublePointforA
Global $MultiDropOkforA, $MultiDropCancelforA

Global $h_hGUI_MakeMultiDropforB
Global $HeaderForMultiDropforB
Global $GroupForRandomPointforB,$GroupForRandomPointforBShow, $GroupforCenterCornerforB, $GroupforCenterCornerforBShow
Global $PicforRandomPointforB, $PicforLinePointforB
Global $RadioForRandomforB , $RadioForLineforB
Global $LblLine1forB, $LblLine2forB, $LblLine3forB, $LblLine4forB, $LblLine5forB, $LblLine6forB, $LblLine7forB, $LblLine8forB, $LblLine9forB, $LblLine10forB, $LblLine11forB
Global $LblRandom1forB, $LblRandom2forB
Global $ComboMultiDrop1stPointforB, $ComboMultiDrop2ndPointforB, $ComboMultiDrop3rdPointforB, $ComboMultiDrop4thPointforB, $ComboMultiDrop5thPointforB, $ComboMultiDrop6thPointforB, $ComboMultiDrop7thPointforB, $ComboMultiDrop8thPointforB, $ComboMultiDrop9thPointforB, $ComboMultiDrop10thPointforB
Global $Lbl1forB, $Lbl2forB, $Lbl3forB, $Lbl4forB, $Lbl5forB, $Lbl6forB, $Lbl7forB, $Lbl8forB, $Lbl9forB, $Lbl10forB, $Lbl11forB, $Lbl12forB, $Lbl13forB, $Lbl14forB, $Lbl15forB, $Lbl16forB, $Lbl17forB, $Lbl18forB, $Lbl19forB, $Lbl20forB
Global $Lbl21forB, $Lbl22forB, $Lbl23forB, $Lbl24forB, $Lbl25forB, $Lbl26forB, $Lbl27forB, $Lbl28forB, $Lbl29forB, $Lbl30forB, $Lbl31forB, $Lbl32forB, $Lbl33forB, $Lbl34forB, $Lbl30forB, $Lbl35forB, $Lbl36forB, $Lbl37forB, $Lbl30forB, $Lbl38forB, $Lbl39forB, $Lbl40forB
Global $1stPointLowerSleepforB, $2ndPointLowerSleepforB, $3rdPointLowerSleepforB, $4thPointLowerSleepforB, $5thPointLowerSleepforB, $6thPointLowerSleepforB, $7thPointLowerSleepforB, $8thPointLowerSleepforB, $9thPointLowerSleepforB, $10thPointLowerSleepforB
Global $1stPointUpperSleepforB, $2ndPointUpperSleepforB, $3rdPointUpperSleepforB, $4thPointUpperSleepforB, $5thPointUpperSleepforB, $6thPointUpperSleepforB, $7thPointUpperSleepforB, $8thPointUpperSleepforB, $9thPointUpperSleepforB, $10thPointUpperSleepforB
Global $ArmySizeinLineforB
Global $InputLineBeginingforB, $InputLineEndingforB
Global $RadioCentertoCornerforB, $RadioCornertoCenterforB
Global $InputLinePointLowerSleepforB, $InputLinePointUpperSleepforB
Global $DoubleMultiDropforB, $lblDoubleMultiDropforB, $PicforLineDoublePointforB
Global $MultiDropOkforB, $MultiDropCancelforB

Global $h_hGUI_MakeMultiDropforC
Global $HeaderForMultiDropforC
Global $GroupForRandomPointforC,$GroupForRandomPointforCShow, $GroupforCenterCornerforC, $GroupforCenterCornerforCShow
Global $PicforRandomPointforC, $PicforLinePointforC
Global $RadioForRandomforC , $RadioForLineforC
Global $LblLine1forC, $LblLine2forC, $LblLine3forC, $LblLine4forC, $LblLine5forC, $LblLine6forC, $LblLine7forC, $LblLine8forC, $LblLine9forC, $LblLine10forC, $LblLine11forC
Global $LblRandom1forC, $LblRandom2forC
Global $ComboMultiDrop1stPointforC, $ComboMultiDrop2ndPointforC, $ComboMultiDrop3rdPointforC, $ComboMultiDrop4thPointforC, $ComboMultiDrop5thPointforC, $ComboMultiDrop6thPointforC, $ComboMultiDrop7thPointforC, $ComboMultiDrop8thPointforC, $ComboMultiDrop9thPointforC, $ComboMultiDrop10thPointforC
Global $Lbl1forC, $Lbl2forC, $Lbl3forC, $Lbl4forC, $Lbl5forC, $Lbl6forC, $Lbl7forC, $Lbl8forC, $Lbl9forC, $Lbl10forC, $Lbl11forC, $Lbl12forC, $Lbl13forC, $Lbl14forC, $Lbl15forC, $Lbl16forC, $Lbl17forC, $Lbl18forC, $Lbl19forC, $Lbl20forC
Global $Lbl21forC, $Lbl22forC, $Lbl23forC, $Lbl24forC, $Lbl25forC, $Lbl26forC, $Lbl27forC, $Lbl28forC, $Lbl29forC, $Lbl30forC, $Lbl31forC, $Lbl32forC, $Lbl33forC, $Lbl34forC, $Lbl30forC, $Lbl35forC, $Lbl36forC, $Lbl37forC, $Lbl30forC, $Lbl38forC, $Lbl39forC, $Lbl40forC
Global $1stPointLowerSleepforC, $2ndPointLowerSleepforC, $3rdPointLowerSleepforC, $4thPointLowerSleepforC, $5thPointLowerSleepforC, $6thPointLowerSleepforC, $7thPointLowerSleepforC, $8thPointLowerSleepforC, $9thPointLowerSleepforC, $10thPointLowerSleepforC
Global $1stPointUpperSleepforC, $2ndPointUpperSleepforC, $3rdPointUpperSleepforC, $4thPointUpperSleepforC, $5thPointUpperSleepforC, $6thPointUpperSleepforC, $7thPointUpperSleepforC, $8thPointUpperSleepforC, $9thPointUpperSleepforC, $10thPointUpperSleepforC
Global $ArmySizeinLineforC
Global $InputLineBeginingforC, $InputLineEndingforC
Global $RadioCentertoCornerforC, $RadioCornertoCenterforC
Global $InputLinePointLowerSleepforC, $InputLinePointUpperSleepforC
Global $DoubleMultiDropforC, $lblDoubleMultiDropforC, $PicforLineDoublePointforC
Global $MultiDropOkforC, $MultiDropCancelforC


Global $h_hGUI_MakeMultiDropforD
Global $HeaderForMultiDropforD
Global $GroupForRandomPointforD,$GroupForRandomPointforDShow, $GroupforCenterCornerforD, $GroupforCenterCornerforDShow
Global $PicforRandomPointforD, $PicforLinePointforD
Global $RadioForRandomforD , $RadioForLineforD
Global $LblLine1forD, $LblLine2forD, $LblLine3forD, $LblLine4forD, $LblLine5forD, $LblLine6forD, $LblLine7forD, $LblLine8forD, $LblLine9forD, $LblLine10forD, $LblLine11forD
Global $LblRandom1forD, $LblRandom2forD
Global $ComboMultiDrop1stPointforD, $ComboMultiDrop2ndPointforD, $ComboMultiDrop3rdPointforD, $ComboMultiDrop4thPointforD, $ComboMultiDrop5thPointforD, $ComboMultiDrop6thPointforD, $ComboMultiDrop7thPointforD, $ComboMultiDrop8thPointforD, $ComboMultiDrop9thPointforD, $ComboMultiDrop10thPointforD
Global $Lbl1forD, $Lbl2forD, $Lbl3forD, $Lbl4forD, $Lbl5forD, $Lbl6forD, $Lbl7forD, $Lbl8forD, $Lbl9forD, $Lbl10forD, $Lbl11forD, $Lbl12forD, $Lbl13forD, $Lbl14forD, $Lbl15forD, $Lbl16forD, $Lbl17forD, $Lbl18forD, $Lbl19forD, $Lbl20forD
Global $Lbl21forD, $Lbl22forD, $Lbl23forD, $Lbl24forD, $Lbl25forD, $Lbl26forD, $Lbl27forD, $Lbl28forD, $Lbl29forD, $Lbl30forD, $Lbl31forD, $Lbl32forD, $Lbl33forD, $Lbl34forD, $Lbl30forD, $Lbl35forD, $Lbl36forD, $Lbl37forD, $Lbl30forD, $Lbl38forD, $Lbl39forD, $Lbl40forD
Global $1stPointLowerSleepforD, $2ndPointLowerSleepforD, $3rdPointLowerSleepforD, $4thPointLowerSleepforD, $5thPointLowerSleepforD, $6thPointLowerSleepforD, $7thPointLowerSleepforD, $8thPointLowerSleepforD, $9thPointLowerSleepforD, $10thPointLowerSleepforD
Global $1stPointUpperSleepforD, $2ndPointUpperSleepforD, $3rdPointUpperSleepforD, $4thPointUpperSleepforD, $5thPointUpperSleepforD, $6thPointUpperSleepforD, $7thPointUpperSleepforD, $8thPointUpperSleepforD, $9thPointUpperSleepforD, $10thPointUpperSleepforD
Global $ArmySizeinLineforD
Global $InputLineBeginingforD, $InputLineEndingforD
Global $RadioCentertoCornerforD, $RadioCornertoCenterforD
Global $InputLinePointLowerSleepforD, $InputLinePointUpperSleepforD
Global $DoubleMultiDropforD, $lblDoubleMultiDropforD, $PicforLineDoublePointforD
Global $MultiDropOkforD, $MultiDropCancelforD

Global $h_hGUI_MakeMultiDropforE
Global $HeaderForMultiDropforE
Global $GroupForRandomPointforE,$GroupForRandomPointforEShow, $GroupforCenterCornerforE, $GroupforCenterCornerforEShow
Global $PicforRandomPointforE, $PicforLinePointforE
Global $RadioForRandomforE , $RadioForLineforE
Global $LblLine1forE, $LblLine2forE, $LblLine3forE, $LblLine4forE, $LblLine5forE, $LblLine6forE, $LblLine7forE, $LblLine8forE, $LblLine9forE, $LblLine10forE, $LblLine11forE
Global $LblRandom1forE, $LblRandom2forE
Global $ComboMultiDrop1stPointforE, $ComboMultiDrop2ndPointforE, $ComboMultiDrop3rdPointforE, $ComboMultiDrop4thPointforE, $ComboMultiDrop5thPointforE, $ComboMultiDrop6thPointforE, $ComboMultiDrop7thPointforE, $ComboMultiDrop8thPointforE, $ComboMultiDrop9thPointforE, $ComboMultiDrop10thPointforE
Global $Lbl1forE, $Lbl2forE, $Lbl3forE, $Lbl4forE, $Lbl5forE, $Lbl6forE, $Lbl7forE, $Lbl8forE, $Lbl9forE, $Lbl10forE, $Lbl11forE, $Lbl12forE, $Lbl13forE, $Lbl14forE, $Lbl15forE, $Lbl16forE, $Lbl17forE, $Lbl18forE, $Lbl19forE, $Lbl20forE
Global $Lbl21forE, $Lbl22forE, $Lbl23forE, $Lbl24forE, $Lbl25forE, $Lbl26forE, $Lbl27forE, $Lbl28forE, $Lbl29forE, $Lbl30forE, $Lbl31forE, $Lbl32forE, $Lbl33forE, $Lbl34forE, $Lbl30forE, $Lbl35forE, $Lbl36forE, $Lbl37forE, $Lbl30forE, $Lbl38forE, $Lbl39forE, $Lbl40forE
Global $1stPointLowerSleepforE, $2ndPointLowerSleepforE, $3rdPointLowerSleepforE, $4thPointLowerSleepforE, $5thPointLowerSleepforE, $6thPointLowerSleepforE, $7thPointLowerSleepforE, $8thPointLowerSleepforE, $9thPointLowerSleepforE, $10thPointLowerSleepforE
Global $1stPointUpperSleepforE, $2ndPointUpperSleepforE, $3rdPointUpperSleepforE, $4thPointUpperSleepforE, $5thPointUpperSleepforE, $6thPointUpperSleepforE, $7thPointUpperSleepforE, $8thPointUpperSleepforE, $9thPointUpperSleepforE, $10thPointUpperSleepforE
Global $ArmySizeinLineforE
Global $InputLineBeginingforE, $InputLineEndingforE
Global $RadioCentertoCornerforE, $RadioCornertoCenterforE
Global $InputLinePointLowerSleepforE, $InputLinePointUpperSleepforE
Global $DoubleMultiDropforE, $lblDoubleMultiDropforE, $PicforLineDoublePointforE
Global $MultiDropOkforE, $MultiDropCancelforE

Global $h_hGUI_MakeMultiDropforF
Global $HeaderForMultiDropforF
Global $GroupForRandomPointforF,$GroupForRandomPointforFShow, $GroupforCenterCornerforF, $GroupforCenterCornerforFShow
Global $PicforRandomPointforF, $PicforLinePointforF
Global $RadioForRandomforF , $RadioForLineforF
Global $LblLine1forF, $LblLine2forF, $LblLine3forF, $LblLine4forF, $LblLine5forF, $LblLine6forF, $LblLine7forF, $LblLine8forF, $LblLine9forF, $LblLine10forF, $LblLine11forF
Global $LblRandom1forF, $LblRandom2forF
Global $ComboMultiDrop1stPointforF, $ComboMultiDrop2ndPointforF, $ComboMultiDrop3rdPointforF, $ComboMultiDrop4thPointforF, $ComboMultiDrop5thPointforF, $ComboMultiDrop6thPointforF, $ComboMultiDrop7thPointforF, $ComboMultiDrop8thPointforF, $ComboMultiDrop9thPointforF, $ComboMultiDrop10thPointforF
Global $Lbl1forF, $Lbl2forF, $Lbl3forF, $Lbl4forF, $Lbl5forF, $Lbl6forF, $Lbl7forF, $Lbl8forF, $Lbl9forF, $Lbl10forF, $Lbl11forF, $Lbl12forF, $Lbl13forF, $Lbl14forF, $Lbl15forF, $Lbl16forF, $Lbl17forF, $Lbl18forF, $Lbl19forF, $Lbl20forF
Global $Lbl21forF, $Lbl22forF, $Lbl23forF, $Lbl24forF, $Lbl25forF, $Lbl26forF, $Lbl27forF, $Lbl28forF, $Lbl29forF, $Lbl30forF, $Lbl31forF, $Lbl32forF, $Lbl33forF, $Lbl34forF, $Lbl30forF, $Lbl35forF, $Lbl36forF, $Lbl37forF, $Lbl30forF, $Lbl38forF, $Lbl39forF, $Lbl40forF
Global $1stPointLowerSleepforF, $2ndPointLowerSleepforF, $3rdPointLowerSleepforF, $4thPointLowerSleepforF, $5thPointLowerSleepforF, $6thPointLowerSleepforF, $7thPointLowerSleepforF, $8thPointLowerSleepforF, $9thPointLowerSleepforF, $10thPointLowerSleepforF
Global $1stPointUpperSleepforF, $2ndPointUpperSleepforF, $3rdPointUpperSleepforF, $4thPointUpperSleepforF, $5thPointUpperSleepforF, $6thPointUpperSleepforF, $7thPointUpperSleepforF, $8thPointUpperSleepforF, $9thPointUpperSleepforF, $10thPointUpperSleepforF
Global $ArmySizeinLineforF
Global $InputLineBeginingforF, $InputLineEndingforF
Global $RadioCentertoCornerforF, $RadioCornertoCenterforF
Global $InputLinePointLowerSleepforF, $InputLinePointUpperSleepforF
Global $DoubleMultiDropforF, $lblDoubleMultiDropforF, $PicforLineDoublePointforF
Global $MultiDropOkforF, $MultiDropCancelforF

Global $h_hGUI_MakeMultiDropforG
Global $HeaderForMultiDropforG
Global $GroupForRandomPointforG,$GroupForRandomPointforGShow, $GroupforCenterCornerforG, $GroupforCenterCornerforGShow
Global $PicforRandomPointforG, $PicforLinePointforG
Global $RadioForRandomforG , $RadioForLineforG
Global $LblLine1forG, $LblLine2forG, $LblLine3forG, $LblLine4forG, $LblLine5forG, $LblLine6forG, $LblLine7forG, $LblLine8forG, $LblLine9forG, $LblLine10forG, $LblLine11forG
Global $LblRandom1forG, $LblRandom2forG
Global $ComboMultiDrop1stPointforG, $ComboMultiDrop2ndPointforG, $ComboMultiDrop3rdPointforG, $ComboMultiDrop4thPointforG, $ComboMultiDrop5thPointforG, $ComboMultiDrop6thPointforG, $ComboMultiDrop7thPointforG, $ComboMultiDrop8thPointforG, $ComboMultiDrop9thPointforG, $ComboMultiDrop10thPointforG
Global $Lbl1forG, $Lbl2forG, $Lbl3forG, $Lbl4forG, $Lbl5forG, $Lbl6forG, $Lbl7forG, $Lbl8forG, $Lbl9forG, $Lbl10forG, $Lbl11forG, $Lbl12forG, $Lbl13forG, $Lbl14forG, $Lbl15forG, $Lbl16forG, $Lbl17forG, $Lbl18forG, $Lbl19forG, $Lbl20forG
Global $Lbl21forG, $Lbl22forG, $Lbl23forG, $Lbl24forG, $Lbl25forG, $Lbl26forG, $Lbl27forG, $Lbl28forG, $Lbl29forG, $Lbl30forG, $Lbl31forG, $Lbl32forG, $Lbl33forG, $Lbl34forG, $Lbl30forG, $Lbl35forG, $Lbl36forG, $Lbl37forG, $Lbl30forG, $Lbl38forG, $Lbl39forG, $Lbl40forG
Global $1stPointLowerSleepforG, $2ndPointLowerSleepforG, $3rdPointLowerSleepforG, $4thPointLowerSleepforG, $5thPointLowerSleepforG, $6thPointLowerSleepforG, $7thPointLowerSleepforG, $8thPointLowerSleepforG, $9thPointLowerSleepforG, $10thPointLowerSleepforG
Global $1stPointUpperSleepforG, $2ndPointUpperSleepforG, $3rdPointUpperSleepforG, $4thPointUpperSleepforG, $5thPointUpperSleepforG, $6thPointUpperSleepforG, $7thPointUpperSleepforG, $8thPointUpperSleepforG, $9thPointUpperSleepforG, $10thPointUpperSleepforG
Global $ArmySizeinLineforG
Global $InputLineBeginingforG, $InputLineEndingforG
Global $RadioCentertoCornerforG, $RadioCornertoCenterforG
Global $InputLinePointLowerSleepforG, $InputLinePointUpperSleepforG
Global $DoubleMultiDropforG, $lblDoubleMultiDropforG, $PicforLineDoublePointforG
Global $MultiDropOkforG, $MultiDropCancelforG

Global $h_hGUI_MakeMultiDropforH
Global $HeaderForMultiDropforH
Global $GroupForRandomPointforH,$GroupForRandomPointforHShow, $GroupforCenterCornerforH, $GroupforCenterCornerforHShow
Global $PicforRandomPointforH, $PicforLinePointforH
Global $RadioForRandomforH , $RadioForLineforH
Global $LblLine1forH, $LblLine2forH, $LblLine3forH, $LblLine4forH, $LblLine5forH, $LblLine6forH, $LblLine7forH, $LblLine8forH, $LblLine9forH, $LblLine10forH, $LblLine11forH
Global $LblRandom1forH, $LblRandom2forH
Global $ComboMultiDrop1stPointforH, $ComboMultiDrop2ndPointforH, $ComboMultiDrop3rdPointforH, $ComboMultiDrop4thPointforH, $ComboMultiDrop5thPointforH, $ComboMultiDrop6thPointforH, $ComboMultiDrop7thPointforH, $ComboMultiDrop8thPointforH, $ComboMultiDrop9thPointforH, $ComboMultiDrop10thPointforH
Global $Lbl1forH, $Lbl2forH, $Lbl3forH, $Lbl4forH, $Lbl5forH, $Lbl6forH, $Lbl7forH, $Lbl8forH, $Lbl9forH, $Lbl10forH, $Lbl11forH, $Lbl12forH, $Lbl13forH, $Lbl14forH, $Lbl15forH, $Lbl16forH, $Lbl17forH, $Lbl18forH, $Lbl19forH, $Lbl20forH
Global $Lbl21forH, $Lbl22forH, $Lbl23forH, $Lbl24forH, $Lbl25forH, $Lbl26forH, $Lbl27forH, $Lbl28forH, $Lbl29forH, $Lbl30forH, $Lbl31forH, $Lbl32forH, $Lbl33forH, $Lbl34forH, $Lbl30forH, $Lbl35forH, $Lbl36forH, $Lbl37forH, $Lbl30forH, $Lbl38forH, $Lbl39forH, $Lbl40forH
Global $1stPointLowerSleepforH, $2ndPointLowerSleepforH, $3rdPointLowerSleepforH, $4thPointLowerSleepforH, $5thPointLowerSleepforH, $6thPointLowerSleepforH, $7thPointLowerSleepforH, $8thPointLowerSleepforH, $9thPointLowerSleepforH, $10thPointLowerSleepforH
Global $1stPointUpperSleepforH, $2ndPointUpperSleepforH, $3rdPointUpperSleepforH, $4thPointUpperSleepforH, $5thPointUpperSleepforH, $6thPointUpperSleepforH, $7thPointUpperSleepforH, $8thPointUpperSleepforH, $9thPointUpperSleepforH, $10thPointUpperSleepforH
Global $ArmySizeinLineforH
Global $InputLineBeginingforH, $InputLineEndingforH
Global $RadioCentertoCornerforH, $RadioCornertoCenterforH
Global $InputLinePointLowerSleepforH, $InputLinePointUpperSleepforH
Global $DoubleMultiDropforH, $lblDoubleMultiDropforH, $PicforLineDoublePointforH
Global $MultiDropOkforH, $MultiDropCancelforH


;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~ MULTIDROP GUI CONTROL VARIABLES <>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $OneDropChoose = 1
Global $MultiDropChoose = 0

Global $MultiMixedDropPoint10forA, $MultiMixedDropPoint9forA, $MultiMixedDropPoint8forA, $MultiMixedDropPoint7forA, $MultiMixedDropPoint6forA, $MultiMixedDropPoint5forA, $MultiMixedDropPoint4forA, $MultiMixedDropPoint3forA, $MultiMixedDropPoint2forA, $MultiMixedDropPoint1forA
Global $MultiMixedDropPoint10forB, $MultiMixedDropPoint9forB, $MultiMixedDropPoint8forB, $MultiMixedDropPoint7forB, $MultiMixedDropPoint6forB, $MultiMixedDropPoint5forB, $MultiMixedDropPoint4forB, $MultiMixedDropPoint3forB, $MultiMixedDropPoint2forB, $MultiMixedDropPoint1forB
Global $MultiMixedDropPoint10forC, $MultiMixedDropPoint9forC, $MultiMixedDropPoint8forC, $MultiMixedDropPoint7forC, $MultiMixedDropPoint6forC, $MultiMixedDropPoint5forC, $MultiMixedDropPoint4forC, $MultiMixedDropPoint3forC, $MultiMixedDropPoint2forC, $MultiMixedDropPoint1forC
Global $MultiMixedDropPoint10forD, $MultiMixedDropPoint9forD, $MultiMixedDropPoint8forD, $MultiMixedDropPoint7forD, $MultiMixedDropPoint6forD, $MultiMixedDropPoint5forD, $MultiMixedDropPoint4forD, $MultiMixedDropPoint3forD, $MultiMixedDropPoint2forD, $MultiMixedDropPoint1forD
Global $MultiMixedDropPoint10forE, $MultiMixedDropPoint9forE, $MultiMixedDropPoint8forE, $MultiMixedDropPoint7forE, $MultiMixedDropPoint6forE, $MultiMixedDropPoint5forE, $MultiMixedDropPoint4forE, $MultiMixedDropPoint3forE, $MultiMixedDropPoint2forE, $MultiMixedDropPoint1forE
Global $MultiMixedDropPoint10forF, $MultiMixedDropPoint9forF, $MultiMixedDropPoint8forF, $MultiMixedDropPoint7forF, $MultiMixedDropPoint6forF, $MultiMixedDropPoint5forF, $MultiMixedDropPoint4forF, $MultiMixedDropPoint3forF, $MultiMixedDropPoint2forF, $MultiMixedDropPoint1forF
Global $MultiMixedDropPoint10forG, $MultiMixedDropPoint9forG, $MultiMixedDropPoint8forG, $MultiMixedDropPoint7forG, $MultiMixedDropPoint6forG, $MultiMixedDropPoint5forG, $MultiMixedDropPoint4forG, $MultiMixedDropPoint3forG, $MultiMixedDropPoint2forG, $MultiMixedDropPoint1forG
Global $MultiMixedDropPoint10forH, $MultiMixedDropPoint9forH, $MultiMixedDropPoint8forH, $MultiMixedDropPoint7forH, $MultiMixedDropPoint6forH, $MultiMixedDropPoint5forH, $MultiMixedDropPoint4forH, $MultiMixedDropPoint3forH, $MultiMixedDropPoint2forH, $MultiMixedDropPoint1forH
Global $ArmySizeforMixedDropPointforA = 0
Global $ArmySizeforMixedDropPointforB = 0
Global $ArmySizeforMixedDropPointforC = 0
Global $ArmySizeforMixedDropPointforD = 0
Global $ArmySizeforMixedDropPointforE = 0
Global $ArmySizeforMixedDropPointforF = 0
Global $ArmySizeforMixedDropPointforG = 0
Global $ArmySizeforMixedDropPointforH = 0
Global $DidIdoSomethingforA = False
Global $DidIdoSomethingforB = False
Global $DidIdoSomethingforC = False
Global $DidIdoSomethingforD = False
Global $DidIdoSomethingforE = False
Global $DidIdoSomethingforF = False
Global $DidIdoSomethingforG = False
Global $DidIdoSomethingforH = False
Global $MultiDropIsSetforA = 0
Global $MultiDropIsSetforB = 0
Global $MultiDropIsSetforC = 0
Global $MultiDropIsSetforD = 0
Global $MultiDropIsSetforE = 0
Global $MultiDropIsSetforF = 0
Global $MultiDropIsSetforG = 0
Global $MultiDropIsSetforH = 0
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~< MAIN GUI VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~

Global $GUI_CSV_in_function ;Main GuiCreate Variable in _GUICreateCSV Function
Global $GUI_MultiDropforA_in_function ;GuiCreate Variable for MULTIDROP SECTION A in _GUICreateMultiDropforA Function
Global $GUI_MultiDropforB_in_function ;GuiCreate Variable for MULTIDROP SECTION B in _GUICreateMultiDropforB Function
Global $GUI_MultiDropforC_in_function ;GuiCreate Variable for MULTIDROP SECTION C in _GUICreateMultiDropforC Function
Global $GUI_MultiDropforD_in_function ;GuiCreate Variable for MULTIDROP SECTION D in _GUICreateMultiDropforD Function
Global $GUI_MultiDropforE_in_function ;GuiCreate Variable for MULTIDROP SECTION E in _GUICreateMultiDropforE Function
Global $GUI_MultiDropforF_in_function ;GuiCreate Variable for MULTIDROP SECTION F in _GUICreateMultiDropforF Function
Global $GUI_MultiDropforG_in_function ;GuiCreate Variable for MULTIDROP SECTION G in _GUICreateMultiDropforG Function
Global $GUI_MultiDropforH_in_function ;GuiCreate Variable for MULTIDROP SECTION H in _GUICreateMultiDropforH Function


Global $TrainGui ;Train Gui in CSV Maker First Page.
Global $h_hGUI_MakeCsv ; MainCSV Gui
Global $g_hCSVMakerMainButton ; MainCSV Gui
Global $Start ; Start button in main page
Global $Exit ; Exit Button in main page
Global $lblFile ; Label "File" before File input inbox
Global $FileInput ; Filename input Box
Global $ShowFile ; Show File in txt
Global $MainInfoPic ; Info Pic in Main Gui
Global $AttackSide2 ;After Start $AttackSide disseppear and AttackSide 2 shown

;In Attack Side (Main)
Global $MainPic
Global $grpOtherSideOption
Global $MainGoldStoragePic, $MainElixirStoragePic, $MainDarkElixirStoragePic, $MainGoldCollectorPic, _
	   $MainElixirCollectorPic, $MainDarkElixirCollectorPic, $MainTHPic, $MainInfernoTowerPic, $MainEaglePic, $MainXbowPic, $MainWizzTowerPic, _
	   $MainAirDeffancePic, $MainScaterPic, $MainMortarPic, $MainAirSweeperPic, $MainLeftFrontPic, $MainLeftBottomPic, $MainRightBottomPic, _
	   $MainRightFrontPic, $MainRandomPic
Global $GoldStorageSlider, $ElixirStorageSlider, $DarkElixirStorageSlider, $GoldCollectorSlider, $ElixirCollectorSlider, $DarkElixirCollectorSlider, _
	   $THSlider, $InfernoTowerSlider, $EagleSlider, $XbowSlider, $WizzTowerSlider, $AirDeffanceSlider, $ScaterSlider, $MortarSlider, $AirSweeperSlider
Global $GoldStorageCheckBox, $ElixirStorageCheckBox, $DarkElixirStorageCheckBox, $GoldCollectorCheckBox, $ElixirCollectorCheckBox, $DarkElixirCollectorCheckBox, _
	   $THCheckBox, $InfernoTowerCheckBox, $EagleCheckBox, $XbowCheckBox, $WizzTowerCheckBox, $AirDeffanceCheckBox, $ScaterCheckBox, $MortarCheckBox, $AirSweeperCheckBox
Global $LeftFrontRadio, $LeftBottomRadio, $RightBottomRadio, $RightFrontRadio, $RandomRadio
Global $grpExpertOnOff, $OnExpertRadio, $OffExpertRadio
Global $Tick
;In Attack Side Left Coulmn After Start
Global $PicInferno ;Inferno Pic in side Option at First Main Page
Global $infernoPoint = 0  ; Inferno Side Point  in side Option at First Main Page
Global $PicAir ; Air Defence Pic in side Option at First Main Page
Global $airPoint = 0  ; Air Defence Side Point   in side Option at First Main Page
Global $PicEagle ; Eagle Pic in side Option at First Main Page
Global $eaglePoint = 0  ; Eagle Point   in Side Option  at First Main Page
Global $PicTH ; TownHall Pic in side Option at First Main Page
Global $THPoint = 0  ; Townhall Point   in side option at First Main Page
Global $PicMortar ; Mortar Pic in side Option at First Main Page
Global $MortarPoint = 0  ; Mortar Point  in side option at First Main Page
Global $PicXbow ;Xbow Pic in side option at First Main Page
Global $XbowpointPoint = 0;Xbow Point  in side option at First Main Page
Global $PicWTower ;Wizzard Tower Pic in side option at First Main Page
Global $WTowerPoint = 0 ;Wizzard Tower Point in side option at First Main Page
Global $PicScatter;ScatterShot Pic in side option at First Main Page
Global $ScatterShotPoint = 0 ;ScatterShot Point  in side option at First Main Page
Global $AirSweeperpoint = 0 ;Air Sweeper Point  in side option at First Main Page

;In Attack Side Right Coulmn After Start
Global $PicGoldStorage ;GoldStorage Pic in side option at First Main Page
Global $GoldStoragePoint = 0 ;GoldStorage Point in side option at First Main Page
Global $PicElixirStorage ;ElixirStorage Pic in side option at First Main Page
Global $ElixirStoragePoint = 0 ;ElixirStorage Point in side option at First Main Page
Global $PicDarkElixirStorage ;DarkElixirStorage Pic in side option at First Main Page
Global $DarkElixirStoragePoint = 0 ;DarkElixirStorage Point in side option at First Main Page
Global $PicMine ;MinePoint Pic in side option at First Main Page
Global $MinePoint = 0 ;MinePoint in side option at First Main Page
Global $PicCollector ;CollectorPoint Pic in side option at First Main Page
Global $CollectorPoint = 0 ;CollectorPoint in side option at First Main Page
Global $PicDrill ;DrillPoint Pic in side option at First Main Page
Global $DrillPoint = 0 ;DrillPoint in side option at First Main Page
Global $ForcedSidePoint = 0 ;ForcedSide Combo in side option at First Main Page

Global $Note ; Program use here to make  "NOTE" functions. It is a Edit Variable in First Page
Global $ListofSteps ; List Wiew of used troops after each step
Global $OpenTrain ; This is button for setting train in "TRAIN" function. It will open new GUI for training menu.
Global $CloseTrain ; This is button for setting train in "TRAIN" function. It will close new GUI for training menu.
Global $LabelHis ="" ; This will show the history of Program versions.. It is just a label.
Global $GetHis = "" ; >>>>> This is Inetread function in "history()". It will change the value of $LabelHis in GUI (First Page)

Global $troops_pic  ; This is map pic in second page (TROOPS)
Global $troops_picmulti  ; This is map pic in second page (TROOPS)
Global $CMBTroops_Name ; ComboBox for Troops and Spells List in second page in Drop Option Menu
Global $LOG ; This is RichEdit function for Log
Global $SaveAndExit ; This is Exit button for Gui in Second Page.. Move CSV file to Attack Folder
Global $GoOnLater ; This is Exit button for Gui in Second Page.. Just Open The Folder do not move
Global $grpfordrop ; Group for Drop Option
Global $AddRandomXandY ; CheckBox to add RandomX and RandomY for spells at drop Function
Global $txtRandomX ;InputBox for RandomX
Global $txtRandomY ;InputBox for RandomY
Global $lblRandomXY1 ; Label between RandomX and RandomY Inbox

Global $Sleep ;CheckBox to Input Sleep Command In CSV
Global $SleepInput1 ; InputBox for first variable (Sleep ms)
Global $SleepInput2 ; InputBox for second variable (Sleep ms)
Global $lblSleep ; Label at Sleep Menu in GUI (Second Page)
Global $lblSleep2 ; Label at Sleep Menu in GUI (Second Page)

Global $RandomnessSlider ; This is ComboBox in GUI for changable INDEX in Drop Func.
Global $RandomnessSliderLabel ; Label at Randomness IN GUI (Second Page)
Global $RandomnessSliderLabel2; Label at Randomness IN GUI (Second Page)
Global $RandomnessSliderImage0 ;Pic to understand what is randomness
Global $RandomnessSliderImage1 ;Pic to understand what is randomness
Global $RandomnessSliderImage2 ;Pic to understand what is randomness
Global $RandomnessSliderImage3 ;Pic to understand what is randomness
Global $RandomnessSliderImage4 ;Pic to understand what is randomness
Global $RandomnessSliderImage5 ;Pic to understand what is randomness
Global $RandomnessSliderImage6 ;Pic to understand what is randomness
Global $RandomnessSliderImage7 ;Pic to understand what is randomness
Global $RandomnessSliderImage8 ;Pic to understand what is randomness

Global $grpforwait ; This is Group for Drop Option in GUI at second page
Global $CheckWait ; CheckBox to add wait command after pressing ADD CSV
Global $AddWaitButton ;Button to add wait func to csv writing
Global $WaitInput1 = 0 ; InputBox 1 for Wait Command (ms)
Global $WaitInput2 = 0 ; InputBox 2 for Wait Command (ms)
Global $CMBWaitBreakCommand ;Combobox for special Break wait time command
Global $lblWait ; Labal at wait Option in GUI at second page
Global $lblWait2 ;Labal at wait Option in GUI at second page

Global $AddCSV ; *********THIS IS FOR ADDING DROP AND WAIT COMMAND TO CSV**********
Global $Undo ; This is for deleting Last Command that you add mistakenly.
Global $InfoAfterStart ; Info Button for Youtube "How to..." Video
Global $TextUsedArmy ; Info Label for used army in GUI at second Page
Global $TextUsedArmyEnter ;Heading of Info Label for used army in GUI at second Page

Global $GrpFORbuildings ;Group on map at righttop and rightbottom corner (HIDED, Just to choose one Radio point)
Global $RadioWall1 ;Option in Gui (second page on Map) for droping spells to building
Global $RadioWall2 ;Option in Gui (second page on Map) for droping spells to building
Global $RadioEagle ;Option in Gui (second page on Map) for droping spells to building
Global $RadioInferno ;Option in Gui (second page on Map) for droping spells to building
Global $RadioXbow ;Option in Gui (second page on Map) for droping spells to building
Global $RadioWizzTower ;Option in Gui (second page on Map) for droping spells to building
Global $RadioAirDefense ;Option in Gui (second page on Map) for droping spells to building
Global $RadioTH ;Option in Gui (second page on Map) for droping spells to building
Global $RadioMortar ;Option in Gui (second page on Map) for droping spells to building
Global $RadioScatterShot ;Option in Gui (second page on Map) for droping spells to building
Global $CheckBuilding ; This is an option CheckBox to drop spells on building
Global $BuildingFrame ; Frame picture for buildings

Global $GrpFORDropType ; ;Group on map for drop type (HIDED, Just to choose one Radio point)
Global $RadioOneDrop ;Option in Gui (second page on Map) for choosing drop type (One Point Choose)
Global $PicOneDrop ; Pic for Choosing Drop Point Type (One Drop)
Global $lblOneDrop ; Label for Choosing Drop Point Type (One Drop)
Global $RadioMultiDrop ;Option in Gui (second page on Map) for choosing drop type (Multi Point Choose)
Global $PicMultiDrop ; Pic for Choosing Drop Point Type (Multi Drop)
Global $lblMultiDrop ; Label for Choosing Drop Point Type (Multi Drop)
Global $BlankCharacters = "                                 " ; Blank characters to organize space in csv



;~ ##################### DROP POINTS AND ADDTILES ON ARMY MAP (MULTI)########################
Global $MultiDropA
Global $MultiDropAOn
Global $MultiDropB
Global $MultiDropBOn
Global $MultiDropC
Global $MultiDropCOn
Global $MultiDropD
Global $MultiDropDOn
Global $MultiDropE
Global $MultiDropEOn
Global $MultiDropF
Global $MultiDropFOn
Global $MultiDropG
Global $MultiDropGOn
Global $MultiDropH
Global $MultiDropHOn
Global $DoubleMultiDropLeftUp, $DoubleMultiDropLeftBottom, $DoubleMultiDropRightBottom, $DoubleMultiDropRightUp

;~ ##################### DROP POINTS AND ADDTILES ON ARMY MAP ########################
Global $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $a10
Global $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $b10
Global $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $c10
Global $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $d10
Global $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $e10
Global $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $f10
Global $g1, $g2, $g3, $g4, $g5, $g6, $g7, $g8, $g9, $g10
Global $h1, $h2, $h3, $h4, $h5, $h6, $h7, $h8, $h9, $h10
Global $aAddTile0, $aAddTile1, $aAddTile2

;~ ##################### QTY_X_VECT POINTS ON ARMY MAP ########################
Global $InputBoxOnMap
Global $lblQTYxVector
Global $ValueOfInputBox = 1
Global $ADDCSVInputBox

;~ ##################### DROP POINTS ON SPELL MAP ################################
Global $Se1L1 , $Se2L1, $Se3L1, $Se4L1, $Se5L1, $Se6L1, $Se7L1, $Se8L1, $Se9L1, $Se10L1
Global $Se1L2 , $Se2L2, $Se3L2, $Se4L2, $Se5L2, $Se6L2, $Se7L2, $Se8L2, $Se9L2, $Se10L2
Global $Se1L3 , $Se2L3, $Se3L3, $Se4L3, $Se5L3, $Se6L3, $Se7L3, $Se8L3, $Se9L3, $Se10L3
Global $Se1L4 , $Se2L4, $Se3L4, $Se4L4, $Se5L4, $Se6L4, $Se7L4, $Se8L4, $Se9L4, $Se10L4
Global $Se1L5 , $Se2L5, $Se3L5, $Se4L5, $Se5L5, $Se6L5, $Se7L5, $Se8L5, $Se9L5, $Se10L5
Global $Se1L6 , $Se2L6, $Se3L6, $Se4L6, $Se5L6, $Se6L6, $Se7L6, $Se8L6, $Se9L6, $Se10L6
Global $Se1L7 , $Se2L7, $Se3L7, $Se4L7, $Se5L7, $Se6L7, $Se7L7, $Se8L7, $Se9L7, $Se10L7
Global $Se1L8 , $Se2L8, $Se3L8, $Se4L8, $Se5L8, $Se6L8, $Se7L8, $Se8L8, $Se9L8, $Se10L8
Global $Se1L9 , $Se2L9, $Se3L9, $Se4L9, $Se5L9, $Se6L9, $Se7L9, $Se8L9, $Se9L9, $Se10L9
Global $Se1L10 , $Se2L10, $Se3L10, $Se4L10, $Se5L10, $Se6L10, $Se7L10, $Se8L10, $Se9L10, $Se10L10
Global $Se1L11 , $Se2L11, $Se3L11, $Se4L11, $Se5L11, $Se6L11, $Se7L11, $Se8L11, $Se9L11, $Se11L11
Global $Se1L12 , $Se2L12, $Se3L12, $Se4L12, $Se5L12, $Se6L12, $Se7L12, $Se8L12, $Se9L12, $Se12L12
Global $Se1L13 , $Se2L13, $Se3L13, $Se4L13, $Se5L13, $Se6L13, $Se7L13, $Se8L13, $Se9L13, $Se13L13
Global $Se1L14 , $Se2L14, $Se3L14, $Se4L14, $Se5L14, $Se6L14, $Se7L14, $Se8L14, $Se9L14, $Se14L14
Global $Se1L15 , $Se2L15, $Se3L15, $Se4L15, $Se5L15, $Se6L15, $Se7L15, $Se8L15, $Se9L15, $Se15L15
Global $Se1L16 , $Se2L16, $Se3L16, $Se4L16, $Se5L16, $Se6L16, $Se7L16, $Se8L16, $Se9L16, $Se16L16
Global $Se1L17 , $Se2L17, $Se3L17, $Se4L17, $Se5L17, $Se6L17, $Se7L17, $Se8L17, $Se9L17, $Se17L17

;~ ##################### DROP POINTS ON SPELL MAP ##############################
Global $Sf1L1 , $Sf2L1, $Sf3L1, $Sf4L1, $Sf5L1, $Sf6L1, $Sf7L1, $Sf8L1, $Sf9L1, $Sf10L1
Global $Sf1L2 , $Sf2L2, $Sf3L2, $Sf4L2, $Sf5L2, $Sf6L2, $Sf7L2, $Sf8L2, $Sf9L2, $Sf10L2
Global $Sf1L3 , $Sf2L3, $Sf3L3, $Sf4L3, $Sf5L3, $Sf6L3, $Sf7L3, $Sf8L3, $Sf9L3, $Sf10L3
Global $Sf1L4 , $Sf2L4, $Sf3L4, $Sf4L4, $Sf5L4, $Sf6L4, $Sf7L4, $Sf8L4, $Sf9L4, $Sf10L4
Global $Sf1L5 , $Sf2L5, $Sf3L5, $Sf4L5, $Sf5L5, $Sf6L5, $Sf7L5, $Sf8L5, $Sf9L5, $Sf10L5
Global $Sf1L6 , $Sf2L6, $Sf3L6, $Sf4L6, $Sf5L6, $Sf6L6, $Sf7L6, $Sf8L6, $Sf9L6, $Sf10L6
Global $Sf1L7 , $Sf2L7, $Sf3L7, $Sf4L7, $Sf5L7, $Sf6L7, $Sf7L7, $Sf8L7, $Sf9L7, $Sf10L7
Global $Sf1L8 , $Sf2L8, $Sf3L8, $Sf4L8, $Sf5L8, $Sf6L8, $Sf7L8, $Sf8L8, $Sf9L8, $Sf10L8
Global $Sf1L9 , $Sf2L9, $Sf3L9, $Sf4L9, $Sf5L9, $Sf6L9, $Sf7L9, $Sf8L9, $Sf9L9, $Sf10L9
Global $Sf1L10 , $Sf2L10, $Sf3L10, $Sf4L10, $Sf5L10, $Sf6L10, $Sf7L10, $Sf8L10, $Sf9L10, $Sf10L10
Global $Sf1L11 , $Sf2L11, $Sf3L11, $Sf4L11, $Sf5L11, $Sf6L11, $Sf7L11, $Sf8L11, $Sf9L11, $Sf11L11
Global $Sf1L12 , $Sf2L12, $Sf3L12, $Sf4L12, $Sf5L12, $Sf6L12, $Sf7L12, $Sf8L12, $Sf9L12, $Sf12L12
Global $Sf1L13 , $Sf2L13, $Sf3L13, $Sf4L13, $Sf5L13, $Sf6L13, $Sf7L13, $Sf8L13, $Sf9L13, $Sf13L13
Global $Sf1L14 , $Sf2L14, $Sf3L14, $Sf4L14, $Sf5L14, $Sf6L14, $Sf7L14, $Sf8L14, $Sf9L14, $Sf14L14
Global $Sf1L15 , $Sf2L15, $Sf3L15, $Sf4L15, $Sf5L15, $Sf6L15, $Sf7L15, $Sf8L15, $Sf9L15, $Sf15L15
Global $Sf1L16 , $Sf2L16, $Sf3L16, $Sf4L16, $Sf5L16, $Sf6L16, $Sf7L16, $Sf8L16, $Sf9L16, $Sf16L16
Global $Sf1L17 , $Sf2L17, $Sf3L17, $Sf4L17, $Sf5L17, $Sf6L17, $Sf7L17, $Sf8L17, $Sf9L17, $Sf17L17
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<> COUNTING TROOPS THAT YOU USED <>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These are for Counting army and showing in gui section under "ADDCSV" Button..
;~ $Count[TROOPNAME] = This counts how many [TROOPNAME] that is/are used
;~ $Count[TROOPNAME]Size = This calculate the size of your [TROOPNAME] in Army
;~ $CountUsed[TROOPNAME]Show = This is showed at GUI with "TROOPNAME    |COUNTED TROOPS |counted troops size"
;~ 	--------------------------if it is greater than zero
;~ $CountUsed[TROOPNAME]SizeShow = This is showed at GUI with "troopname    |counted troops | COUNTED TROOPS SIZE"
;~  ------------------------------if it is greater than zero

Global $TroopSizeinCSV
Global $CountBarbarian = 0 ;-----------------------------------------------------------------------------------------------
Global $CountBarbarianSize = 0;--------------------------------------------------------------------------------------------
Global $CountSuperBarbarian = 0 ;------------------------------------------------------------------------------------------
Global $CountSuperBarbarianSize = 0;---------------------------------------------------------------------------------------
Global $CountArcher = 0;---------------------------------------------------------------------------------------------------
Global $CountArcherSize = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperArcher = 0;----------------------------------------------------------------------------------------------
Global $CountSuperArcherSize = 0;------------------------------------------------------------------------------------------
Global $CountGiant = 0;----------------------------------------------------------------------------------------------------
Global $CountGiantSize = 0;------------------------------------------------------------------------------------------------
Global $CountSuperGiant = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperGiantSize = 0;-------------------------------------------------------------------------------------------
Global $CountGoblin = 0;---------------------------------------------------------------------------------------------------
Global $CountGoblinSize = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperGoblin = 0;----------------------------------------------------------------------------------------------
Global $CountSuperGoblinSize = 0;------------------------------------------------------------------------------------------
Global $CountWallBreaker = 0;----------------------------------------------------------------------------------------------
Global $CountWallBreakerSize = 0;------------------------------------------------------------------------------------------
Global $CountSuperWallBreaker = 0;-----------------------------------------------------------------------------------------
Global $CountSuperWallBreakerSize = 0;-------------------------------------------------------------------------------------
Global $CountBaloon = 0;---------------------------------------------------------------------------------------------------
Global $CountBaloonSize = 0;-----------------------------------------------------------------------------------------------
Global $CountRocketBaloon = 0;---------------------------------------------------------------------------------------------
Global $CountRocketBaloonSize = 0;-----------------------------------------------------------------------------------------
Global $CountWizard = 0;---------------------------------------------------------------------------------------------------
Global $CountWizardSize = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperWizard = 0;----------------------------------------------------------------------------------------------
Global $CountSuperWizardSize = 0;------------------------------------------------------------------------------------------
Global $CountHealer = 0;---------------------------------------------------------------------------------------------------
Global $CountHealerSize = 0;-----------------------------------------------------------------------------------------------
Global $CountDragon = 0;---------------------------------------------------------------------------------------------------
Global $CountDragonSize  = 0;----------------------------------------------------------------------------------------------
Global $CountInfernoDragonSize  = 0;---------------------------------------------------------------------------------------
Global $CountInfernoDragon = 0;--------------------------------------------------------------------------------------------
Global $CountSuperDragonSize  = 0;-----------------------------------------------------------------------------------------
Global $CountSuperDragon = 0;----------------------------------------------------------------------------------------------
Global $CountPekka = 0;----------------------------------------------------------------------------------------------------
Global $CountPekkaSize = 0;------------------------------------------------------------------------------------------------
Global $CountBabyDragon = 0;-----------------------------------------------------------------------------------------------
Global $CountBabyDragonSize = 0;-------------------------------------------------------------------------------------------
Global $CountMiner = 0;----------------------------------------------------------------------------------------------------
Global $CountMinerSize = 0;------------------------------------------------------------------------------------------------
Global $CountElectroDragon = 0;--------------------------------------------------------------------------------------------
Global $CountElectroDragonSize = 0;----------------------------------------------------------------------------------------
Global $CountDragonRider = 0;----------------------------------------------------------------------------------------------
Global $CountDragonRiderSize = 0;------------------------------------------------------------------------------------------
Global $CountYeti = 0;-----------------------------------------------------------------------------------------------------
Global $CountYetiSize = 0;-------------------------------------------------------------------------------------------------
Global $CountHunter = 0;---------------------------------------------------------------------------------------------------
Global $CountHunterSize = 0;-----------------------------------------------------------------------------------------------
Global $CountMinion = 0;---------------------------------------------------------------------------------------------------
Global $CountMinionSize = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperMinion = 0;----------------------------------------------------------------------------------------------
Global $CountSuperMinionSize = 0;------------------------------------------------------------------------------------------
Global $CountHogRider = 0;-------------------------------------------------------------------------------------------------
Global $CountHogRiderSize = 0;---------------------------------------------------------------------------------------------
Global $CountValkyre = 0;--------------------------------------------------------------------------------------------------
Global $CountValkyreSize = 0;----------------------------------------------------------------------------------------------
Global $CountSuperValkyre = 0;---------------------------------------------------------------------------------------------
Global $CountSuperValkyreSize = 0;-----------------------------------------------------------------------------------------
Global $CountGolem = 0;----------------------------------------------------------------------------------------------------
Global $CountGolemSize = 0;------------------------------------------------------------------------------------------------
Global $CountSuperWitch = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperWitchSize = 0;-------------------------------------------------------------------------------------------
Global $CountWitch = 0;----------------------------------------------------------------------------------------------------
Global $CountWitchSize = 0;------------------------------------------------------------------------------------------------
Global $CountLavaHound = 0;------------------------------------------------------------------------------------------------
Global $CountLavaHoundSize = 0;--------------------------------------------------------------------------------------------
Global $CountIceHound = 0;------------------------------------------------------------------------------------------------
Global $CountIceHoundSize = 0;--------------------------------------------------------------------------------------------
Global $CountBowler = 0;---------------------------------------------------------------------------------------------------
Global $CountBowlerSize = 0;-----------------------------------------------------------------------------------------------
Global $CountSuperBowler = 0;---------------------------------------------------------------------------------------------------
Global $CountSuperBowlerSize = 0;-----------------------------------------------------------------------------------------------
Global $CountIceGolem = 0;-------------------------------------------------------------------------------------------------
Global $CountIceGolemSize = 0;---------------------------------------------------------------------------------------------
Global $CountLSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountLSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountHSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountRSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountRSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountJSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountJSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountFSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountFSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountCSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountCSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountISpell = 0;---------------------------------------------------------------------------------------------------
Global $CountISpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountPSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountPSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountESpell = 0;---------------------------------------------------------------------------------------------------
Global $CountESpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHaSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountHaSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountSkSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountSkSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountBtSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountBtSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountUsedBarbarianShow;--------------------------------------------------------------------------------------------
Global $CountUsedSuperBarbarianShow;---------------------------------------------------------------------------------------
Global $CountUsedArcherShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperArcherShow;------------------------------------------------------------------------------------------
Global $CountUsedGiantShow;------------------------------------------------------------------------------------------------
Global $CountUsedSuperGiantShow;-------------------------------------------------------------------------------------------
Global $CountUsedGoblinShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperGoblinShow;------------------------------------------------------------------------------------------
Global $CountUsedWallBreakerShow;------------------------------------------------------------------------------------------
Global $CountUsedSuperWallBreakerShow;-------------------------------------------------------------------------------------
Global $CountUsedBaloonShow;-----------------------------------------------------------------------------------------------
Global $CountUsedRocketBaloonShow;-----------------------------------------------------------------------------------------
Global $CountUsedWizardShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperWizardShow;------------------------------------------------------------------------------------------
Global $CountUsedHealerShow;-----------------------------------------------------------------------------------------------
Global $CountUsedDragonShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperDragonShow;------------------------------------------------------------------------------------------
Global $CountUsedInfernoDragonShow;----------------------------------------------------------------------------------------
Global $CountUsedPekkaShow;------------------------------------------------------------------------------------------------
Global $CountUsedBabyDragonShow;-------------------------------------------------------------------------------------------
Global $CountUsedMinerShow;------------------------------------------------------------------------------------------------
Global $CountUsedElectroDragonShow;----------------------------------------------------------------------------------------
Global $CountUsedDragonRiderShow;------------------------------------------------------------------------------------------
Global $CountUsedYetiShow;-------------------------------------------------------------------------------------------------
Global $CountUsedHunterShow;-----------------------------------------------------------------------------------------------
Global $CountUsedMinionShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperMinionShow;------------------------------------------------------------------------------------------
Global $CountUsedHogRiderShow;---------------------------------------------------------------------------------------------
Global $CountUsedValkyreShow;----------------------------------------------------------------------------------------------
Global $CountUsedSuperValkyreShow;-----------------------------------------------------------------------------------------
Global $CountUsedGolemShow;------------------------------------------------------------------------------------------------
Global $CountUsedWitchShow;------------------------------------------------------------------------------------------------
Global $CountUsedSuperWitchShow;-------------------------------------------------------------------------------------------
Global $CountUsedLavaHoundShow;--------------------------------------------------------------------------------------------
Global $CountUsedIceHoundShow;---------------------------------------------------------------------------------------------
Global $CountUsedBowlerShow;-----------------------------------------------------------------------------------------------
Global $CountUsedSuperBowlerShow;------------------------------------------------------------------------------------------
Global $CountUsedIceGolemShow;---------------------------------------------------------------------------------------------
Global $CountUsedLSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedHSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedRSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedJSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedFSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedCSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedISpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedPSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedESpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedHaSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedSkSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedBtSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedKingShow;-------------------------------------------------------------------------------------------------
Global $CountUsedQueenShow;------------------------------------------------------------------------------------------------
Global $CountUsedWardenShow;-----------------------------------------------------------------------------------------------
Global $CountUsedRoyaleChampionShow;---------------------------------------------------------------------------------------
Global $CountUsedSSShow;---------------------------------------------------------------------------------------------------
Global $CountUsedSBShow;---------------------------------------------------------------------------------------------------
Global $CountUsedCCShow;---------------------------------------------------------------------------------------------------
Global $CountUsedBBShow;---------------------------------------------------------------------------------------------------
Global $CountUsedWWShow;---------------------------------------------------------------------------------------------------
Global $CountUsedLLShow;---------------------------------------------------------------------------------------------------
Global $CountUsedFFShow;---------------------------------------------------------------------------------------------------
Global $CountKing = 0;-----------------------------------------------------------------------------------------------------
Global $CountQueen = 0;----------------------------------------------------------------------------------------------------
Global $CountWarden = 0;---------------------------------------------------------------------------------------------------
Global $CountRoyaleChampion = 0;-------------------------------------------------------------------------------------------
Global $CountCC = 0;-------------------------------------------------------------------------------------------------------
Global $CountWW = 0;-------------------------------------------------------------------------------------------------------
Global $CountSS = 0;-------------------------------------------------------------------------------------------------------
Global $CountBB = 0;-------------------------------------------------------------------------------------------------------
Global $CountSB = 0;-------------------------------------------------------------------------------------------------------
Global $CountLL = 0;-------------------------------------------------------------------------------------------------------
Global $CountFF = 0;-------------------------------------------------------------------------------------------------------
Global $LastTroopCount = 0;------------------------------------------------------------------------------------------------
Global $LastTroopName = "";------------------------------------------------------------------------------------------------
;~ ########################################################################################################################
Global $CounterTroop_SpellSize = 0 ;This variable will keep the data of the size of spell wihch you choose
Global $CounterTroop_TroopSize = 1 ;This variable will keep the data of the size of troop wihch you choose. It is 1 because first choosen army is Barbarian
Global $ArmyCountTXT ;This is last face of counted troops that will be showed at GUI
Global $SumOfArmySizeCount = 0 ; Sum of counted army size after pressing ADD CSV button
Global $SumOfArmySizeCountShow ;String of $SumOfArmySizeCount with some words.
Global $SumOfSpellSizeCount = 0 ;Sum of counted spell size after pressing ADD CSV button
Global $SumOfSpellSizeCountShow ; ;String of $SumOfSpellSizeCount with some words.
Global $LOGEnter = "" ; This variable will show what exactly will be send in LOG screen
Global $LOGEnter2 = "" ; This variable will show what exactly will be send in LOG screen about Wait Condition.
Global $Filenumber = 1 ; This will add to your file if it has more than one..  It is increment variable if you have same file again and again...
Global $infinity = 10000000000000000000000000000 ; Just to say infinity for some loop.. Idk why did i use it in loop :)



;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<> Choosing Side Menu Variable<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ They are read with GUICtrlRead() function from gui and kept with new variable.. Mostly used in SideFile.au3
Global $GetInferno = 0 ;---------------------------------------------------------------------------------------------------
Global $GetAirDefance = 0;-------------------------------------------------------------------------------------------------
Global $GetScatterShot = 0;------------------------------------------------------------------------------------------------
Global $GetEagle = 0;------------------------------------------------------------------------------------------------------
Global $GetTH = 0;---------------------------------------------------------------------------------------------------------
Global $GetMortar = 0;-----------------------------------------------------------------------------------------------------
Global $GetXbow = 0;-------------------------------------------------------------------------------------------------------
Global $GetWizzTower = 0;--------------------------------------------------------------------------------------------------
Global $GetGoldStorage=0;--------------------------------------------------------------------------------------------------
Global $GetElixirStorage = 0;----------------------------------------------------------------------------------------------
Global $GetDarkElixirStorage = 0;------------------------------------------------------------------------------------------
Global $GetMine = 0;-------------------------------------------------------------------------------------------------------
Global $GetCollector = 0;--------------------------------------------------------------------------------------------------
Global $GetDrill = 0;------------------------------------------------------------------------------------------------------
Global $GetAirSweeper = 0 ;------------------------------------------------------------------------------------------------
Global $GetForcedSide ; if $SideSUM is zero and this is choosen "NONE", program doesnt let you to go on second page;-------
;--------------------------------------------------------------------------------------------------------------------------
Global $SideSUM = 0 ; if sum of all $Get[BUILDING] are zero program doesnt let you to go on second page ;------------------
;--------------------------------------------------------------------------------------------------------------------------
Global $EagleCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .----------------------
Global $InfernoCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .--------------------
Global $XbowCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------------
Global $WizzTowerCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" . -----------------
Global $AirDefanceCSV; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .------------------
Global $MortarCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .---------------------
Global $ScatterShotCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .----------------
Global $AirSweeperCSV  ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .----------------
;~  -----------------------------------------------------------------------------------------------------------------------
Global $ExtrGoldCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $ExtrElixirCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------
Global $ExtrDarkCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoDarkCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoGoldCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoElixirCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" . ----------------
Global $TownHallCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $ForcedSideCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------
Global $GetSideA ;This is all part of SIDE command variables---------------------------------------------------------------
Global $GetSideB ;This is all part of SIDEB command variables--------------------------------------------------------------
Global $BSideEnter = "      |EAGLE      |INFERNO    |XBOW       |WIZTOWER   |MORTAR     |AIRDEFENSE |SCATTER    |AIRSWEEPER |GEMBOX     |"
Global $ASideEnter = "      |EXTR. GOLD |EXTR.ELIXIR|EXTR. DARK |DEPO. GOLD |DEPO.ELIXIR|DEPO. DARK |TOWNHALL   |FORCED SIDE|           |"
;~ ------------------------------------------------------------------------------------------------------------------------
;~ ########################################################################################################################


;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ Add NOTE Menu Variable <>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These variable is used to converts notes in Gui for CSV  ($NOTE) .. Mostly used in AddNotes.au3
Global $ReadNote ;---------------------------------------------------------------------------------------------------------
Global $SplitTheNote;------------------------------------------------------------------------------------------------------
Dim $CSVNOTE[1];-----------------------------------------------------------------------------------------------------------
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ GetSleepSize() Variable >~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These variable used in DropFunc.au3 file to get sleep infos
Global $GetSleep1 ;Read from $SleepInput1
Global $GetSleep2 ;Read from $SleepInput2
Global $ADDSleepCSV ; This is slot of Sleep in DROP command. (11 Slot)
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ DROP COMMAND VARIABLE ~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ Some of DROP COMMAND VARIABLE.. Mostly they are in DropFunc.au3 File------------------------------------------------------
Global $SideType ; This is Letter of your side that you choosed after pressing a TROOP drop button
Global $SpellSideType ; This is Letter of your side that you choosed after pressing a SPELL drop button
Global $AddTile ; This is integer of choosen addtile from your GUI. It is sometimes negative because of spell points.
Global $SideNumber = 0 ; After choosing troop drop button, This will generate a suitable number for it.
Global $SpellSideNumber = 0 ; After choosing spell drop button, This will generate a suitable number for it.
Global $DropPoint ; This will string status of all DROP command
Global $Wideness ; Add a command in drop command like 'W1,W2, etc.'
Global $Comment = "" ; This is comment after $DropPoint to show what COMMAND is in CSV
Global $Comment2 = ""
global $UndoWaitComment = ""
Global $MakeSpell ; This is special MAKE command for Spells
Global $Make_SF = "MAKE  |Z          |FRONT-RIGHT|10         |" ;part of $MakeSpell
Global $Make_SE = "MAKE  |Y          |FRONT-LEFT |10         |" ;part of $MakeSpell
Global $InputRandomX=0 ;this variabel is for adding to DROP Command which includes RANDOMX_PX
Global $InputRandomY=0 ;this variabel is for adding to DROP Command which includes RANDOMY_PX
Global $SpellOnBuildingName  ;This is part of DROP Command in String. It changes depend on Building name what you choose.
Global $LogBuilding ; This will show the building name if you want to drop on building at LOG Screen
Global $iStep = 0
Global $iStepType ;"Army", "Spell" , "WAIT"
Global $iStepTroopName ;From Barbarian to Castle
Global $iStepTroopCount ; Value of Troop
Global $iStepTroopSize ; Value of Troop Size
Global $Undo_Array_CSVWrite[1] = [""]
Global $Undo_Array_CSVTroopName[1] = [""]
Global $Undo_Array_CSVTroopCount[1] = [""]
Global $Undo_Array_CSVLog[1] = [""]
Global $StepList[1] = ["List of Drop Troops"]
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ MAKE COMMAND VARIABLE ~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ Some of MAKE COMMAND VARIABLE.. Mostly they are in MakeFile.au3 File------------------------------------------------------
Global $FirstAdding = True ; This is a control of ADDCSV not to add DROPENTER at begining
;~ --------------------------If user put ADDCSV at beginging it will be always False.
Global $TName = "Barb       " ;This variable is part of DROP Command to add Troop Name that user choosed, it is equal Barb for first start
Global $TType = "Army"        ; This is a control variable to check if user choose army or spell, It is equal ARMY for first start
   Global $MakeEnter = "      |VECTOR_____|SIDE_______|DROP_POINTS|ADDTILES___|VERSUS_____|RANDOMX_PX_|RANDOMY_PX_|BUILDING___|___________|" & @CRLF ;HEading of MAKE Command
   Global $DropEnter = "      |VECTOR_____|INDEX______|QTY_X_VECT_|TROOPNAME__|DELAY_DROP_|DELAYCHANGE|SLEEPAFTER_|___________|___________|" & @CRLF ;HEading of DROP Command
Global $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"
      Global $ReCalc = "RECALC|           |           |           |           |           |           |           |           |           |" & @CRLF
  Global $DropRemain = "DROP  |P-M        |1-8        |1          |REMAIN     |50-70      |100        |50-100     |           |           |" & @CRLF
  Global $endofCSV1 =  "      |------------------------------------------ This CSV created with ------------------------------------------|" & @CRLF
  Global $endofCSV2 =  "      |------------------------------------- CSV Maker 2022 that is made by --------------------------------------|" & @CRLF
  Global $endofCSV3 =  "      |----------------------------------------------- @ratakantez -----------------------------------------------|" & @CRLF
  Global $endofCSV4 =  "      |------------------------------------------ www.mybot.run/forums -------------------------------------------|" & @CRLF
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ SOME OTHER VARIABLE <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ ----------These are to control some function. you can check the infos.----------------------------------------------------------
Global $LOGName = "Barbarian" ; This variable will show Troop/spell/hero/machine/Castle Name that you choose in LOG
Global $UndoLine ; This is a control command to controll how many line will be delete after pressing UNDO button.
Global $TextToWrite ; Empty for deleting after pressing UNDO button
Global $GuiLastSpellPoint ;Control variable to change color of choosen Last Spell Button
Global $GuiLastArmyPoint ;Control variable to change color of choosen Last Army Button
Global $GuiLastAddTilePoint ;Control variable to change color of choosen Last Addtile Button
Global $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\_CSV.cur'); Cursor variable on map. It will start with Barbarian becuase barbarian is first choosen by program in COMBO of Troops Name.
Global $AddTileChoose = False ; This is variable to control if addtile will be showed or hided..
Global $PtRadioTotal ;Control Varaible for radio of building.
Global $PtRadiowall1 ;Control Varaible for radio of building.
Global $PtRadiowall2 ;Control Varaible for radio of building.
Global $PtRadioEagle ;Control Varaible for radio of building.
Global $PtRadioInferno ;Control Varaible for radio of building.
Global $PtRadioXbow ;Control Varaible for radio of building.
Global $PtRadioWizzTower ;Control Varaible for radio of building.
Global $PtRadioAirDefense ;Control Varaible for radio of building.
Global $PtRadioTH ;Control Varaible for radio of building.
Global $PtRadioMortar ;Control Varaible for radio of building.
Global $PtRadioScatterShot ;Control Varaible for radio of building.
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~< WAIT COMMAND VARIABLE <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $WaitforListofSteps = ""
Global $WaitInCSV = "           " ;String of time that user choose (ms)-----------------------------------------------------
Global $TextToWrite ; Empty for deleting after pressing UNDO button-------------------------------------------------------
Global $WaitCommandCSV, $MinWait, $MaxWait, $LookWait ;all of WAIT Command in CSV-------------------------------------------
Global $WaitCommand = "           " ; Status of break time-------------------------------------------------------------
;~ ########################################################################################################################

;Train Show and Hide Gui Control Variables
Global $ShowTrainTH6GuiIS = 0
Global $ShowTrainTH7GuiIS = 0
Global $ShowTrainTH8GuiIS = 0
Global $ShowTrainTH9GuiIS = 0
Global $ShowTrainTH10GuiIS = 0
Global $ShowTrainTH11GuiIS = 0
Global $ShowTrainTH12GuiIS = 0
Global $ShowTrainTH13GuiIS = 0
Global $ShowTrainTH14GuiIS = 1
;Train and CCReq
Global $TrainBackGround ; Backgraound Pic of Train in Gui
Global $Traininfo ;info pic on Train GUI
Global $TH6, $TrainSelectTH6, $TrainSelectTH6Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH7, $TrainSelectTH7, $TrainSelectTH7Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH8, $TrainSelectTH8, $TrainSelectTH8Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH9, $TrainSelectTH9, $TrainSelectTH9Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH10, $TrainSelectTH10, $TrainSelectTH10Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH11, $TrainSelectTH11, $TrainSelectTH11Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH12, $TrainSelectTH12, $TrainSelectTH12Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH13, $TrainSelectTH13, $TrainSelectTH13Click ; Heading Label, Click Image and Clickarea for TH Level
Global $TH14, $TrainSelectTH14, $TrainSelectTH14Click ; Heading Label, Click Image and Clickarea for TH Level
Global $SaveTrain ; This variable save the data of user's input and return main GUI
;~ ############### Image of Armies #############
;~ TH[Level]Pic[TroopName] --> image of pictures in TH Level Coulumn
Global $TH6PicBarbarian, $TH7PicBarbarian, $TH8PicBarbarian, $TH9PicBarbarian, $TH10PicBarbarian, $TH11PicBarbarian, $TH12PicBarbarian, $TH13PicBarbarian, $TH14PicBarbarian
Global $TH6PicSuperBarbarian, $TH7PicSuperBarbarian, $TH8PicSuperBarbarian, $TH9PicSuperBarbarian, $TH10PicSuperBarbarian, $TH11PicSuperBarbarian, $TH12PicSuperBarbarian, $TH13PicSuperBarbarian, $TH14PicSuperBarbarian
Global $TH6PicArcher, $TH7PicArcher, $TH8PicArcher, $TH9PicArcher, $TH10PicArcher, $TH11PicArcher, $TH12PicArcher, $TH13PicArcher, $TH14PicArcher
Global $TH6PicSuperArcher, $TH7PicSuperArcher, $TH8PicSuperArcher, $TH9PicSuperArcher, $TH10PicSuperArcher, $TH11PicSuperArcher, $TH12PicSuperArcher, $TH13PicSuperArcher, $TH14PicSuperArcher
Global $TH6PicGiant, $TH7PicGiant, $TH8PicGiant, $TH9PicGiant, $TH10PicGiant, $TH11PicGiant, $TH12PicGiant, $TH13PicGiant, $TH14PicGiant
Global $TH6PicSuperGiant, $TH7PicSuperGiant, $TH8PicSuperGiant, $TH9PicSuperGiant, $TH10PicSuperGiant, $TH11PicSuperGiant, $TH12PicSuperGiant, $TH13PicSuperGiant, $TH14PicSuperGiant
Global $TH6PicGoblin, $TH7PicGoblin, $TH8PicGoblin, $TH9PicGoblin, $TH10PicGoblin, $TH11PicGoblin, $TH12PicGoblin, $TH13PicGoblin, $TH14PicGoblin
Global $TH6PicSuperGoblin, $TH7PicSuperGoblin, $TH8PicSuperGoblin, $TH9PicSuperGoblin, $TH10PicSuperGoblin, $TH11PicSuperGoblin, $TH12PicSuperGoblin, $TH13PicSuperGoblin, $TH14PicSuperGoblin
Global $TH6PicWallB, $TH7PicWallB, $TH8PicWallB, $TH9PicWallB, $TH10PicWallB, $TH11PicWallB, $TH12PicWallB, $TH13PicWallB, $TH14PicWallB
Global $TH6PicSuperWallB, $TH7PicSuperWallB, $TH8PicSuperWallB, $TH9PicSuperWallB, $TH10PicSuperWallB, $TH11PicSuperWallB, $TH12PicSuperWallB, $TH13PicSuperWallB, $TH14PicSuperWallB
Global $TH6PicBall, $TH7PicBall, $TH8PicBall, $TH9PicBall, $TH10PicBall, $TH11PicBall, $TH12PicBall, $TH13PicBall, $TH14PicBall
Global $TH6PicRocketBall, $TH7PicRocketBall, $TH8PicRocketBall, $TH9PicRocketBall, $TH10PicRocketBall, $TH11PicRocketBall, $TH12PicRocketBall, $TH13PicRocketBall, $TH14PicRocketBall
Global $TH6PicWizzard, $TH7PicWizzard, $TH8PicWizzard, $TH9PicWizzard, $TH10PicWizzard, $TH11PicWizzard, $TH12PicWizzard, $TH13PicWizzard, $TH14PicWizzard
Global $TH6PicSuperWizzard, $TH7PicSuperWizzard, $TH8PicSuperWizzard, $TH9PicSuperWizzard, $TH10PicSuperWizzard, $TH11PicSuperWizzard, $TH12PicSuperWizzard, $TH13PicSuperWizzard, $TH14PicSuperWizzard
Global $TH6PicHealer, $TH7PicHealer, $TH8PicHealer, $TH9PicHealer, $TH10PicHealer, $TH11PicHealer, $TH12PicHealer, $TH13PicHealer, $TH14PicHealer
Global $TH6PicDragon, $TH7PicDragon, $TH8PicDragon, $TH9PicDragon, $TH10PicDragon, $TH11PicDragon, $TH12PicDragon, $TH13PicDragon, $TH14PicDragon
Global $TH6PicSDragon, $TH7PicSDragon, $TH8PicSDragon, $TH9PicSDragon, $TH10PicSDragon, $TH11PicSDragon, $TH12PicSDragon, $TH13PicSDragon, $TH14PicSDragon
Global $TH6PicIDragon, $TH7PicIDragon, $TH8PicIDragon, $TH9PicIDragon, $TH10PicIDragon, $TH11PicIDragon, $TH12PicIDragon, $TH13PicIDragon, $TH14PicIDragon
Global $TH6PicPekka, $TH7PicPekka, $TH8PicPekka, $TH9PicPekka, $TH10PicPekka, $TH11PicPekka, $TH12PicPekka, $TH13PicPekka, $TH14PicPekka
Global $TH6PicBabyDragon, $TH7PicBabyDragon, $TH8PicBabyDragon, $TH9PicBabyDragon, $TH10PicBabyDragon, $TH11PicBabyDragon, $TH12PicBabyDragon, $TH13PicBabyDragon, $TH14PicBabyDragon
Global $TH6PicMiner, $TH7PicMiner, $TH8PicMiner, $TH9PicMiner, $TH10PicMiner, $TH11PicMiner, $TH12PicMiner, $TH13PicMiner, $TH14PicMiner
Global $TH6PicElectro, $TH7PicElectro, $TH8PicElectro, $TH9PicElectro, $TH10PicElectro, $TH11PicElectro, $TH12PicElectro, $TH13PicElectro, $TH14PicElectro
Global $TH6PicDragonRider, $TH7PicDragonRider, $TH8PicDragonRider, $TH9PicDragonRider, $TH10PicDragonRider, $TH11PicDragonRider, $TH12PicDragonRider, $TH13PicDragonRider, $TH14PicDragonRider
Global $TH6PicMini, $TH7PicMini, $TH8PicMini, $TH9PicMini, $TH10PicMini, $TH11PicMini, $TH12PicMini, $TH13PicMini, $TH14PicMini
Global $TH6PicSuperMini, $TH7PicSuperMini, $TH8PicSuperMini, $TH9PicSuperMini, $TH10PicSuperMini, $TH11PicSuperMini, $TH12PicSuperMini, $TH13PicSuperMini, $TH14PicSuperMini
Global $TH6PicHogs, $TH7PicHogs, $TH8PicHogs, $TH9PicHogs, $TH10PicHogs, $TH11PicHogs, $TH12PicHogs, $TH13PicHogs, $TH14PicHogs
Global $TH6PicValkyre, $TH7PicValkyre, $TH8PicValkyre, $TH9PicValkyre, $TH10PicValkyre, $TH11PicValkyre, $TH12PicValkyre, $TH13PicValkyre, $TH14PicValkyre
Global $TH6PicSuperValkyre, $TH7PicSuperValkyre, $TH8PicSuperValkyre, $TH9PicSuperValkyre, $TH10PicSuperValkyre, $TH11PicSuperValkyre, $TH12PicSuperValkyre, $TH13PicSuperValkyre, $TH14PicSuperValkyre
Global $TH6PicGolem, $TH7PicGolem, $TH8PicGolem, $TH9PicGolem, $TH10PicGolem, $TH11PicGolem, $TH12PicGolem, $TH13PicGolem, $TH14PicGolem
Global $TH6PicWitch, $TH7PicWitch, $TH8PicWitch, $TH9PicWitch, $TH10PicWitch, $TH11PicWitch, $TH12PicWitch, $TH13PicWitch, $TH14PicWitch
Global $TH6PicSuperWitch, $TH7PicSuperWitch, $TH8PicSuperWitch, $TH9PicSuperWitch, $TH10PicSuperWitch, $TH11PicSuperWitch, $TH12PicSuperWitch, $TH13PicSuperWitch, $TH14PicSuperWitch
Global $TH6PicLava, $TH7PicLava, $TH8PicLava, $TH9PicLava, $TH10PicLava, $TH11PicLava, $TH12PicLava, $TH13PicLava, $TH14PicLava
Global $TH6PicIceHound, $TH7PicIceHound, $TH8PicIceHound, $TH9PicIceHound, $TH10PicIceHound, $TH11PicIceHound, $TH12PicIceHound, $TH13PicIceHound, $TH14PicIceHound
Global $TH6PicBowler, $TH7PicBowler, $TH8PicBowler, $TH9PicBowler, $TH10PicBowler, $TH11PicBowler, $TH12PicBowler, $TH13PicBowler, $TH14PicBowler
Global $TH6PicSuperBowler, $TH7PicSuperBowler, $TH8PicSuperBowler, $TH9PicSuperBowler, $TH10PicSuperBowler, $TH11PicSuperBowler, $TH12PicSuperBowler, $TH13PicSuperBowler, $TH14PicSuperBowler
Global $TH6PicIceGolem, $TH7PicIceGolem, $TH8PicIceGolem, $TH9PicIceGolem, $TH10PicIceGolem, $TH11PicIceGolem, $TH12PicIceGolem, $TH13PicIceGolem, $TH14PicIceGolem
Global $TH6PicYeti, $TH7PicYeti, $TH8PicYeti, $TH9PicYeti, $TH10PicYeti, $TH11PicYeti, $TH12PicYeti, $TH13PicYeti, $TH14PicYeti
Global $TH6PicHunter, $TH7PicHunter, $TH8PicHunter, $TH9PicHunter, $TH10PicHunter, $TH11PicHunter, $TH12PicHunter, $TH13PicHunter, $TH14PicHunter

Global $TH6PicLSpell, $TH7PicLSpell, $TH8PicLSpell, $TH9PicLSpell, $TH10PicLSpell, $TH11PicLSpell, $TH12PicLSpell, $TH13PicLSpell, $TH14PicLSpell
Global $TH6PicHSpell, $TH7PicHSpell, $TH8PicHSpell, $TH9PicHSpell, $TH10PicHSpell, $TH11PicHSpell, $TH12PicHSpell, $TH13PicHSpell, $TH14PicHSpell
Global $TH6PicRSpell, $TH7PicRSpell, $TH8PicRSpell, $TH9PicRSpell, $TH10PicRSpell, $TH11PicRSpell, $TH12PicRSpell, $TH13PicRSpell, $TH14PicRSpell
Global $TH6PicJSpell, $TH7PicJSpell, $TH8PicJSpell, $TH9PicJSpell, $TH10PicJSpell, $TH11PicJSpell, $TH12PicJSpell, $TH13PicJSpell, $TH14PicJSpell
Global $TH6PicFSpell, $TH7PicFSpell, $TH8PicFSpell, $TH9PicFSpell, $TH10PicFSpell, $TH11PicFSpell, $TH12PicFSpell, $TH13PicFSpell, $TH14PicFSpell
Global $TH6PicCSpell, $TH7PicCSpell, $TH8PicCSpell, $TH9PicCSpell, $TH10PicCSpell, $TH11PicCSpell, $TH12PicCSpell, $TH13PicCSpell, $TH14PicCSpell
Global $TH6PicISpell, $TH7PicISpell, $TH8PicISpell, $TH9PicISpell, $TH10PicISpell, $TH11PicISpell, $TH12PicISpell, $TH13PicISpell, $TH14PicISpell
Global $TH6PicPSpell, $TH7PicPSpell, $TH8PicPSpell, $TH9PicPSpell, $TH10PicPSpell, $TH11PicPSpell, $TH12PicPSpell, $TH13PicPSpell, $TH14PicPSpell
Global $TH6PicESpell, $TH7PicESpell, $TH8PicESpell, $TH9PicESpell, $TH10PicESpell, $TH11PicESpell, $TH12PicESpell, $TH13PicESpell, $TH14PicESpell
Global $TH6PicHaSpell, $TH7PicHaSpell, $TH8PicHaSpell, $TH9PicHaSpell, $TH10PicHaSpell, $TH11PicHaSpell, $TH12PicHaSpell, $TH13PicHaSpell, $TH14PicHaSpell
Global $TH6PicSkSpell, $TH7PicSkSpell, $TH8PicSkSpell, $TH9PicSkSpell, $TH10PicSkSpell, $TH11PicSkSpell, $TH12PicSkSpell, $TH13PicSkSpell, $TH14PicSkSpell
Global $TH6PicBaSpell, $TH7PicBaSpell, $TH8PicBaSpell, $TH9PicBaSpell, $TH10PicBaSpell, $TH11PicBaSpell, $TH12PicBaSpell, $TH13PicBaSpell, $TH14PicBaSpell

Global $TH6PicBattleB, $TH7PicBattleB, $TH8PicBattleB, $TH9PicBattleB, $TH10PicBattleB, $TH11PicBattleB, $TH12PicBattleB, $TH13PicBattleB, $TH14PicBattleB
Global $TH6PicWallw, $TH7PicWallw, $TH8PicWallw, $TH9PicWallw, $TH10PicWallw, $TH11PicWallw, $TH12PicWallw, $TH13PicWallw, $TH14PicWallw
Global $TH6PicStoneS, $TH7PicStoneS, $TH8PicStoneS, $TH9PicStoneS, $TH10PicStoneS, $TH11PicStoneS, $TH12PicStoneS, $TH13PicStoneS, $TH14PicStoneS
Global $TH6PicSiegeB, $TH7PicSiegeB, $TH8PicSiegeB, $TH9PicSiegeB, $TH10PicSiegeB, $TH11PicSiegeB, $TH12PicSiegeB, $TH13PicSiegeB, $TH14PicSiegeB
Global $TH6PicLogL, $TH7PicLogL, $TH8PicLogL, $TH9PicLogL, $TH10PicLogL, $TH11PicLogL, $TH12PicLogL, $TH13PicLogL, $TH14PicLogL
Global $TH6PicFlameF, $TH7PicFlameF, $TH8PicFlameF, $TH9PicFlameF, $TH10PicFlameF, $TH11PicFlameF, $TH12PicFlameF, $TH13PicFlameF, $TH14PicFlameF

Global $TH6PicKing, $TH7PicKing, $TH8PicKing, $TH9PicKing, $TH10PicKing, $TH11PicKing, $TH12PicKing, $TH13PicKing, $TH14PicKing
Global $TH6PicQueen, $TH7PicQueen, $TH8PicQueen, $TH9PicQueen, $TH10PicQueen, $TH11PicQueen, $TH12PicQueen, $TH13PicQueen, $TH14PicQueen
Global $TH6PicWarden, $TH7PicWarden, $TH8PicWarden, $TH9PicWarden, $TH10PicWarden, $TH11PicWarden, $TH12PicWarden, $TH13PicWarden, $TH14PicWarden
Global $TH6PicRoyaleC, $TH7PicRoyaleC, $TH8PicRoyaleC, $TH9PicRoyaleC, $TH10PicRoyaleC, $TH11PicRoyaleC, $TH12PicRoyaleC, $TH13PicRoyaleC, $TH14PicRoyaleC

Global $TH6KingCheckBoxGroup, $TH7KingCheckBoxGroup, $TH8KingCheckBoxGroup, $TH9KingCheckBoxGroup, $TH10KingCheckBoxGroup, $TH11KingCheckBoxGroup, $TH12KingCheckBoxGroup, $TH13KingCheckBoxGroup, $TH14KingCheckBoxGroup
Global $TH6KingPicRed, $TH7KingPicRed, $TH8KingPicRed, $TH9KingPicRed, $TH10KingPicRed, $TH11KingPicRed, $TH12KingPicRed, $TH13KingPicRed, $TH14KingPicRed
Global $TH6KingCheckBoxRed, $TH7KingCheckBoxRed, $TH8KingCheckBoxRed, $TH9KingCheckBoxRed, $TH10KingCheckBoxRed, $TH11KingCheckBoxRed, $TH12KingCheckBoxRed, $TH13KingCheckBoxRed, $TH14KingCheckBoxRed
Global $TH6KingLblRed, $TH7KingLblRed, $TH8KingLblRed, $TH9KingLblRed, $TH10KingLblRed, $TH11KingLblRed, $TH12KingLblRed, $TH13KingLblRed, $TH14KingLblRed
Global $TH6KingPicTime, $TH7KingPicTime, $TH8KingPicTime, $TH9KingPicTime, $TH10KingPicTime, $TH11KingPicTime, $TH12KingPicTime, $TH13KingPicTime, $TH14KingPicTime
Global $TH6KingCheckBoxTime, $TH7KingCheckBoxTime, $TH8KingCheckBoxTime, $TH9KingCheckBoxTime, $TH10KingCheckBoxTime, $TH11KingCheckBoxTime, $TH12KingCheckBoxTime, $TH13KingCheckBoxTime, $TH14KingCheckBoxTime
Global $TH6KingLblTime, $TH7KingLblTime, $TH8KingLblTime, $TH9KingLblTime, $TH10KingLblTime, $TH11KingLblTime, $TH12KingLblTime, $TH13KingLblTime, $TH14KingLblTime
Global $TH6KingPicRedorTime, $TH7KingPicRedorTime, $TH8KingPicRedorTime, $TH9KingPicRedorTime, $TH10KingPicRedorTime, $TH11KingPicRedorTime, $TH12KingPicRedorTime, $TH13KingPicRedorTime, $TH14KingPicRedorTime
Global $TH6KingCheckBoxRedorTime, $TH7KingCheckBoxRedorTime, $TH8KingCheckBoxRedorTime, $TH9KingCheckBoxRedorTime, $TH10KingCheckBoxRedorTime, $TH11KingCheckBoxRedorTime, $TH12KingCheckBoxRedorTime, $TH13KingCheckBoxRedorTime, $TH14KingCheckBoxRedorTime
Global $TH6KingLblRedorTime, $TH7KingLblRedorTime, $TH8KingLblRedorTime, $TH9KingLblRedorTime, $TH10KingLblRedorTime, $TH11KingLblRedorTime, $TH12KingLblRedorTime, $TH13KingLblRedorTime, $TH14KingLblRedorTime

Global $TH6QueenCheckBoxGroup, $TH7QueenCheckBoxGroup, $TH8QueenCheckBoxGroup, $TH9QueenCheckBoxGroup, $TH10QueenCheckBoxGroup, $TH11QueenCheckBoxGroup, $TH12QueenCheckBoxGroup, $TH13QueenCheckBoxGroup, $TH14QueenCheckBoxGroup
Global $TH6QueenPicRed, $TH7QueenPicRed, $TH8QueenPicRed, $TH9QueenPicRed, $TH10QueenPicRed, $TH11QueenPicRed, $TH12QueenPicRed, $TH13QueenPicRed, $TH14QueenPicRed
Global $TH6QueenCheckBoxRed, $TH7QueenCheckBoxRed, $TH8QueenCheckBoxRed, $TH9QueenCheckBoxRed, $TH10QueenCheckBoxRed, $TH11QueenCheckBoxRed, $TH12QueenCheckBoxRed, $TH13QueenCheckBoxRed, $TH14QueenCheckBoxRed
Global $TH6QueenLblRed, $TH7QueenLblRed, $TH8QueenLblRed, $TH9QueenLblRed, $TH10QueenLblRed, $TH11QueenLblRed, $TH12QueenLblRed, $TH13QueenLblRed, $TH14QueenLblRed
Global $TH6QueenPicTime, $TH7QueenPicTime, $TH8QueenPicTime, $TH9QueenPicTime, $TH10QueenPicTime, $TH11QueenPicTime, $TH12QueenPicTime, $TH13QueenPicTime, $TH14QueenPicTime
Global $TH6QueenCheckBoxTime, $TH7QueenCheckBoxTime, $TH8QueenCheckBoxTime, $TH9QueenCheckBoxTime, $TH10QueenCheckBoxTime, $TH11QueenCheckBoxTime, $TH12QueenCheckBoxTime, $TH13QueenCheckBoxTime, $TH14QueenCheckBoxTime
Global $TH6QueenLblTime, $TH7QueenLblTime, $TH8QueenLblTime, $TH9QueenLblTime, $TH10QueenLblTime, $TH11QueenLblTime, $TH12QueenLblTime, $TH13QueenLblTime, $TH14QueenLblTime
Global $TH6QueenPicRedorTime, $TH7QueenPicRedorTime, $TH8QueenPicRedorTime, $TH9QueenPicRedorTime, $TH10QueenPicRedorTime, $TH11QueenPicRedorTime, $TH12QueenPicRedorTime, $TH13QueenPicRedorTime, $TH14QueenPicRedorTime
Global $TH6QueenCheckBoxRedorTime, $TH7QueenCheckBoxRedorTime, $TH8QueenCheckBoxRedorTime, $TH9QueenCheckBoxRedorTime, $TH10QueenCheckBoxRedorTime, $TH11QueenCheckBoxRedorTime, $TH12QueenCheckBoxRedorTime, $TH13QueenCheckBoxRedorTime, $TH14QueenCheckBoxRedorTime
Global $TH6QueenLblRedorTime, $TH7QueenLblRedorTime, $TH8QueenLblRedorTime, $TH9QueenLblRedorTime, $TH10QueenLblRedorTime, $TH11QueenLblRedorTime, $TH12QueenLblRedorTime, $TH13QueenLblRedorTime, $TH14QueenLblRedorTime

Global $TH6WardenCheckBoxGroup, $TH7WardenCheckBoxGroup, $TH8WardenCheckBoxGroup, $TH9WardenCheckBoxGroup, $TH10WardenCheckBoxGroup, $TH11WardenCheckBoxGroup, $TH12WardenCheckBoxGroup, $TH13WardenCheckBoxGroup, $TH14WardenCheckBoxGroup
Global $TH6WardenPicRed, $TH7WardenPicRed, $TH8WardenPicRed, $TH9WardenPicRed, $TH10WardenPicRed, $TH11WardenPicRed, $TH12WardenPicRed, $TH13WardenPicRed, $TH14WardenPicRed
Global $TH6WardenCheckBoxRed, $TH7WardenCheckBoxRed, $TH8WardenCheckBoxRed, $TH9WardenCheckBoxRed, $TH10WardenCheckBoxRed, $TH11WardenCheckBoxRed, $TH12WardenCheckBoxRed, $TH13WardenCheckBoxRed, $TH14WardenCheckBoxRed
Global $TH6WardenLblRed, $TH7WardenLblRed, $TH8WardenLblRed, $TH9WardenLblRed, $TH10WardenLblRed, $TH11WardenLblRed, $TH12WardenLblRed, $TH13WardenLblRed, $TH14WardenLblRed
Global $TH6WardenPicTime, $TH7WardenPicTime, $TH8WardenPicTime, $TH9WardenPicTime, $TH10WardenPicTime, $TH11WardenPicTime, $TH12WardenPicTime, $TH13WardenPicTime, $TH14WardenPicTime
Global $TH6WardenCheckBoxTime, $TH7WardenCheckBoxTime, $TH8WardenCheckBoxTime, $TH9WardenCheckBoxTime, $TH10WardenCheckBoxTime, $TH11WardenCheckBoxTime, $TH12WardenCheckBoxTime, $TH13WardenCheckBoxTime, $TH14WardenCheckBoxTime
Global $TH6WardenLblTime, $TH7WardenLblTime, $TH8WardenLblTime, $TH9WardenLblTime, $TH10WardenLblTime, $TH11WardenLblTime, $TH12WardenLblTime, $TH13WardenLblTime, $TH14WardenLblTime
Global $TH6WardenPicRedorTime, $TH7WardenPicRedorTime, $TH8WardenPicRedorTime, $TH9WardenPicRedorTime, $TH10WardenPicRedorTime, $TH11WardenPicRedorTime, $TH12WardenPicRedorTime, $TH13WardenPicRedorTime, $TH14WardenPicRedorTime
Global $TH6WardenCheckBoxRedorTime, $TH7WardenCheckBoxRedorTime, $TH8WardenCheckBoxRedorTime, $TH9WardenCheckBoxRedorTime, $TH10WardenCheckBoxRedorTime, $TH11WardenCheckBoxRedorTime, $TH12WardenCheckBoxRedorTime, $TH13WardenCheckBoxRedorTime, $TH14WardenCheckBoxRedorTime
Global $TH6WardenLblRedorTime, $TH7WardenLblRedorTime, $TH8WardenLblRedorTime, $TH9WardenLblRedorTime, $TH10WardenLblRedorTime, $TH11WardenLblRedorTime, $TH12WardenLblRedorTime, $TH13WardenLblRedorTime, $TH14WardenLblRedorTime

Global $TH6RoyaleCCheckBoxGroup, $TH7RoyaleCCheckBoxGroup, $TH8RoyaleCCheckBoxGroup, $TH9RoyaleCCheckBoxGroup, $TH10RoyaleCCheckBoxGroup, $TH11RoyaleCCheckBoxGroup, $TH12RoyaleCCheckBoxGroup, $TH13RoyaleCCheckBoxGroup, $TH14RoyaleCCheckBoxGroup
Global $TH6RoyaleCPicRed, $TH7RoyaleCPicRed, $TH8RoyaleCPicRed, $TH9RoyaleCPicRed, $TH10RoyaleCPicRed, $TH11RoyaleCPicRed, $TH12RoyaleCPicRed, $TH13RoyaleCPicRed, $TH14RoyaleCPicRed
Global $TH6RoyaleCCheckBoxRed, $TH7RoyaleCCheckBoxRed, $TH8RoyaleCCheckBoxRed, $TH9RoyaleCCheckBoxRed, $TH10RoyaleCCheckBoxRed, $TH11RoyaleCCheckBoxRed, $TH12RoyaleCCheckBoxRed, $TH13RoyaleCCheckBoxRed, $TH14RoyaleCCheckBoxRed
Global $TH6RoyaleCLblRed, $TH7RoyaleCLblRed, $TH8RoyaleCLblRed, $TH9RoyaleCLblRed, $TH10RoyaleCLblRed, $TH11RoyaleCLblRed, $TH12RoyaleCLblRed, $TH13RoyaleCLblRed, $TH14RoyaleCLblRed
Global $TH6RoyaleCPicTime, $TH7RoyaleCPicTime, $TH8RoyaleCPicTime, $TH9RoyaleCPicTime, $TH10RoyaleCPicTime, $TH11RoyaleCPicTime, $TH12RoyaleCPicTime, $TH13RoyaleCPicTime, $TH14RoyaleCPicTime
Global $TH6RoyaleCCheckBoxTime, $TH7RoyaleCCheckBoxTime, $TH8RoyaleCCheckBoxTime, $TH9RoyaleCCheckBoxTime, $TH10RoyaleCCheckBoxTime, $TH11RoyaleCCheckBoxTime, $TH12RoyaleCCheckBoxTime, $TH13RoyaleCCheckBoxTime, $TH14RoyaleCCheckBoxTime
Global $TH6RoyaleCLblTime, $TH7RoyaleCLblTime, $TH8RoyaleCLblTime, $TH9RoyaleCLblTime, $TH10RoyaleCLblTime, $TH11RoyaleCLblTime, $TH12RoyaleCLblTime, $TH13RoyaleCLblTime, $TH14RoyaleCLblTime
Global $TH6RoyaleCPicRedorTime, $TH7RoyaleCPicRedorTime, $TH8RoyaleCPicRedorTime, $TH9RoyaleCPicRedorTime, $TH10RoyaleCPicRedorTime, $TH11RoyaleCPicRedorTime, $TH12RoyaleCPicRedorTime, $TH13RoyaleCPicRedorTime, $TH14RoyaleCPicRedorTime
Global $TH6RoyaleCCheckBoxRedorTime, $TH7RoyaleCCheckBoxRedorTime, $TH8RoyaleCCheckBoxRedorTime, $TH9RoyaleCCheckBoxRedorTime, $TH10RoyaleCCheckBoxRedorTime, $TH11RoyaleCCheckBoxRedorTime, $TH12RoyaleCCheckBoxRedorTime, $TH13RoyaleCCheckBoxRedorTime, $TH14RoyaleCCheckBoxRedorTime
Global $TH6RoyaleCLblRedorTime, $TH7RoyaleCLblRedorTime, $TH8RoyaleCLblRedorTime, $TH9RoyaleCLblRedorTime, $TH10RoyaleCLblRedorTime, $TH11RoyaleCLblRedorTime, $TH12RoyaleCLblRedorTime, $TH13RoyaleCLblRedorTime, $TH14RoyaleCLblRedorTime

Global $TH6LblKing, $TH7LblKing, $TH8LblKing, $TH9LblKing, $TH10LblKing, $TH11LblKing, $TH12LblKing, $TH13LblKing, $TH14LblKing
Global $TH6LblQueen, $TH7LblQueen, $TH8LblQueen, $TH9LblQueen, $TH10LblQueen, $TH11LblQueen, $TH12LblQueen, $TH13LblQueen, $TH14LblQueen
Global $TH6LblWarden, $TH7LblWarden, $TH8LblWarden, $TH9LblWarden, $TH10LblWarden, $TH11LblWarden, $TH12LblWarden, $TH13LblWarden, $TH14LblWarden
Global $TH6LblRoyaleC, $TH7LblRoyaleC, $TH8LblRoyaleC, $TH9LblRoyaleC, $TH10LblRoyaleC, $TH11LblRoyaleC, $TH12LblRoyaleC, $TH13LblRoyaleC, $TH14LblRoyaleC


Global $TH6txtNumBarbarian, $TH7txtNumBarbarian, $TH8txtNumBarbarian, $TH9txtNumBarbarian, $TH10txtNumBarbarian, $TH11txtNumBarbarian, $TH12txtNumBarbarian, $TH13txtNumBarbarian, $TH14txtNumBarbarian
Global $TH6txtNumSuperBarbarian, $TH7txtNumSuperBarbarian, $TH8txtNumSuperBarbarian, $TH9txtNumSuperBarbarian, $TH10txtNumSuperBarbarian, $TH11txtNumSuperBarbarian, $TH12txtNumSuperBarbarian, $TH13txtNumSuperBarbarian, $TH14txtNumSuperBarbarian
Global $TH6txtNumArcher, $TH7txtNumArcher, $TH8txtNumArcher, $TH9txtNumArcher, $TH10txtNumArcher, $TH11txtNumArcher, $TH12txtNumArcher, $TH13txtNumArcher, $TH14txtNumArcher
Global $TH6txtNumSuperArcher, $TH7txtNumSuperArcher, $TH8txtNumSuperArcher, $TH9txtNumSuperArcher, $TH10txtNumSuperArcher, $TH11txtNumSuperArcher, $TH12txtNumSuperArcher, $TH13txtNumSuperArcher, $TH14txtNumSuperArcher
Global $TH6txtNumGiant, $TH7txtNumGiant, $TH8txtNumGiant, $TH9txtNumGiant, $TH10txtNumGiant, $TH11txtNumGiant, $TH12txtNumGiant, $TH13txtNumGiant, $TH14txtNumGiant
Global $TH6txtNumSuperGiant, $TH7txtNumSuperGiant, $TH8txtNumSuperGiant, $TH9txtNumSuperGiant, $TH10txtNumSuperGiant, $TH11txtNumSuperGiant, $TH12txtNumSuperGiant, $TH13txtNumSuperGiant, $TH14txtNumSuperGiant
Global $TH6txtNumGoblin, $TH7txtNumGoblin, $TH8txtNumGoblin, $TH9txtNumGoblin, $TH10txtNumGoblin, $TH11txtNumGoblin, $TH12txtNumGoblin, $TH13txtNumGoblin, $TH14txtNumGoblin
Global $TH6txtNumSuperGoblin, $TH7txtNumSuperGoblin, $TH8txtNumSuperGoblin, $TH9txtNumSuperGoblin, $TH10txtNumSuperGoblin, $TH11txtNumSuperGoblin, $TH12txtNumSuperGoblin, $TH13txtNumSuperGoblin, $TH14txtNumSuperGoblin
Global $TH6txtNumWall, $TH7txtNumWall, $TH8txtNumWall, $TH9txtNumWall, $TH10txtNumWall, $TH11txtNumWall, $TH12txtNumWall, $TH13txtNumWall, $TH14txtNumWall
Global $TH6txtNumSuperWall, $TH7txtNumSuperWall, $TH8txtNumSuperWall, $TH9txtNumSuperWall, $TH10txtNumSuperWall, $TH11txtNumSuperWall, $TH12txtNumSuperWall, $TH13txtNumSuperWall, $TH14txtNumSuperWall
Global $TH6txtNumBall, $TH7txtNumBall, $TH8txtNumBall, $TH9txtNumBall, $TH10txtNumBall, $TH11txtNumBall, $TH12txtNumBall, $TH13txtNumBall, $TH14txtNumBall
Global $TH6txtNumRocketBall, $TH7txtNumRocketBall, $TH8txtNumRocketBall, $TH9txtNumRocketBall, $TH10txtNumRocketBall, $TH11txtNumRocketBall, $TH12txtNumRocketBall, $TH13txtNumRocketBall, $TH14txtNumRocketBall
Global $TH6txtNumWiza, $TH7txtNumWiza, $TH8txtNumWiza, $TH9txtNumWiza, $TH10txtNumWiza, $TH11txtNumWiza, $TH12txtNumWiza, $TH13txtNumWiza, $TH14txtNumWiza
Global $TH6txtNumSuperWiza, $TH7txtNumSuperWiza, $TH8txtNumSuperWiza, $TH9txtNumSuperWiza, $TH10txtNumSuperWiza, $TH11txtNumSuperWiza, $TH12txtNumSuperWiza, $TH13txtNumSuperWiza, $TH14txtNumSuperWiza
Global $TH6txtNumHeal, $TH7txtNumHeal, $TH8txtNumHeal, $TH9txtNumHeal, $TH10txtNumHeal, $TH11txtNumHeal, $TH12txtNumHeal, $TH13txtNumHeal, $TH14txtNumHeal
Global $TH6txtNumDrag, $TH7txtNumDrag, $TH8txtNumDrag, $TH9txtNumDrag, $TH10txtNumDrag, $TH11txtNumDrag, $TH12txtNumDrag, $TH13txtNumDrag, $TH14txtNumDrag
Global $TH6txtNumIDrag, $TH7txtNumIDrag, $TH8txtNumIDrag, $TH9txtNumIDrag, $TH10txtNumIDrag, $TH11txtNumIDrag, $TH12txtNumIDrag, $TH13txtNumIDrag, $TH14txtNumIDrag
Global $TH6txtNumSDrag, $TH7txtNumSDrag, $TH8txtNumSDrag, $TH9txtNumSDrag, $TH10txtNumSDrag, $TH11txtNumSDrag, $TH12txtNumSDrag, $TH13txtNumSDrag, $TH14txtNumSDrag
Global $TH6txtNumPekk, $TH7txtNumPekk, $TH8txtNumPekk, $TH9txtNumPekk, $TH10txtNumPekk, $TH11txtNumPekk, $TH12txtNumPekk, $TH13txtNumPekk, $TH14txtNumPekk
Global $TH6txtNumBabyDragon, $TH7txtNumBabyDragon, $TH8txtNumBabyDragon, $TH9txtNumBabyDragon, $TH10txtNumBabyDragon, $TH11txtNumBabyDragon, $TH12txtNumBabyDragon, $TH13txtNumBabyDragon, $TH14txtNumBabyDragon
Global $TH6txtNumMiner, $TH7txtNumMiner, $TH8txtNumMiner, $TH9txtNumMiner, $TH10txtNumMiner, $TH11txtNumMiner, $TH12txtNumMiner, $TH13txtNumMiner, $TH14txtNumMiner
Global $TH6txtNumEdrag, $TH7txtNumEdrag, $TH8txtNumEdrag, $TH9txtNumEdrag, $TH10txtNumEdrag, $TH11txtNumEdrag, $TH12txtNumEdrag, $TH13txtNumEdrag, $TH14txtNumEdrag
Global $TH6txtNumDragRider, $TH7txtNumDragRider, $TH8txtNumDragRider, $TH9txtNumDragRider, $TH10txtNumDragRider, $TH11txtNumDragRider, $TH12txtNumDragRider, $TH13txtNumDragRider, $TH14txtNumDragRider
Global $TH6txtNumYeti, $TH7txtNumYeti, $TH8txtNumYeti, $TH9txtNumYeti, $TH10txtNumYeti, $TH11txtNumYeti, $TH12txtNumYeti, $TH13txtNumYeti, $TH14txtNumYeti
Global $TH6txtNumMini, $TH7txtNumMini, $TH8txtNumMini, $TH9txtNumMini, $TH10txtNumMini, $TH11txtNumMini, $TH12txtNumMini, $TH13txtNumMini, $TH14txtNumMini
Global $TH6txtNumSuperMini, $TH7txtNumSuperMini, $TH8txtNumSuperMini, $TH9txtNumSuperMini, $TH10txtNumSuperMini, $TH11txtNumSuperMini, $TH12txtNumSuperMini, $TH13txtNumSuperMini, $TH14txtNumSuperMini
Global $TH6txtNumHogs, $TH7txtNumHogs, $TH8txtNumHogs, $TH9txtNumHogs, $TH10txtNumHogs, $TH11txtNumHogs, $TH12txtNumHogs, $TH13txtNumHogs, $TH14txtNumHogs
Global $TH6txtNumValkyre, $TH7txtNumValkyre, $TH8txtNumValkyre, $TH9txtNumValkyre, $TH10txtNumValkyre, $TH11txtNumValkyre, $TH12txtNumValkyre, $TH13txtNumValkyre, $TH14txtNumValkyre
Global $TH6txtNumSuperValkyre, $TH7txtNumSuperValkyre, $TH8txtNumSuperValkyre, $TH9txtNumSuperValkyre, $TH10txtNumSuperValkyre, $TH11txtNumSuperValkyre, $TH12txtNumSuperValkyre, $TH13txtNumSuperValkyre, $TH14txtNumSuperValkyre
Global $TH6txtNumGolem, $TH7txtNumGolem, $TH8txtNumGolem, $TH9txtNumGolem, $TH10txtNumGolem, $TH11txtNumGolem, $TH12txtNumGolem, $TH13txtNumGolem, $TH14txtNumGolem
Global $TH6txtNumWitch, $TH7txtNumWitch, $TH8txtNumWitch, $TH9txtNumWitch, $TH10txtNumWitch, $TH11txtNumWitch, $TH12txtNumWitch, $TH13txtNumWitch, $TH14txtNumWitch
Global $TH6txtNumSuperWitch, $TH7txtNumSuperWitch, $TH8txtNumSuperWitch, $TH9txtNumSuperWitch, $TH10txtNumSuperWitch, $TH11txtNumSuperWitch, $TH12txtNumSuperWitch, $TH13txtNumSuperWitch, $TH14txtNumSuperWitch
Global $TH6txtNumLava, $TH7txtNumLava, $TH8txtNumLava, $TH9txtNumLava, $TH10txtNumLava, $TH11txtNumLava, $TH12txtNumLava, $TH13txtNumLava, $TH14txtNumLava
Global $TH6txtNumILava, $TH7txtNumILava, $TH8txtNumILava, $TH9txtNumILava, $TH10txtNumILava, $TH11txtNumILava, $TH12txtNumILava, $TH13txtNumILava, $TH14txtNumILava
Global $TH6txtNumBowler, $TH7txtNumBowler, $TH8txtNumBowler, $TH9txtNumBowler, $TH10txtNumBowler, $TH11txtNumBowler, $TH12txtNumBowler, $TH13txtNumBowler, $TH14txtNumBowler
Global $TH6txtNumSBowler, $TH7txtNumSBowler, $TH8txtNumSBowler, $TH9txtNumSBowler, $TH10txtNumSBowler, $TH11txtNumSBowler, $TH12txtNumSBowler, $TH13txtNumSBowler, $TH14txtNumSBowler
Global $TH6txtNumIceGolem, $TH7txtNumIceGolem, $TH8txtNumIceGolem, $TH9txtNumIceGolem, $TH10txtNumIceGolem, $TH11txtNumIceGolem, $TH12txtNumIceGolem, $TH13txtNumIceGolem, $TH14txtNumIceGolem
Global $TH6txtNumHunter, $TH7txtNumHunter, $TH8txtNumHunter, $TH9txtNumHunter, $TH10txtNumHunter, $TH11txtNumHunter, $TH12txtNumHunter, $TH13txtNumHunter, $TH14txtNumHunter
Global $TH6txtNumLSpell, $TH7txtNumLSpell, $TH8txtNumLSpell, $TH9txtNumLSpell, $TH10txtNumLSpell, $TH11txtNumLSpell, $TH12txtNumLSpell, $TH13txtNumLSpell, $TH14txtNumLSpell
Global $TH6txtNumHSpell, $TH7txtNumHSpell, $TH8txtNumHSpell, $TH9txtNumHSpell, $TH10txtNumHSpell, $TH11txtNumHSpell, $TH12txtNumHSpell, $TH13txtNumHSpell, $TH14txtNumHSpell
Global $TH6txtNumRSpell, $TH7txtNumRSpell, $TH8txtNumRSpell, $TH9txtNumRSpell, $TH10txtNumRSpell, $TH11txtNumRSpell, $TH12txtNumRSpell, $TH13txtNumRSpell, $TH14txtNumRSpell
Global $TH6txtNumJSpell, $TH7txtNumJSpell, $TH8txtNumJSpell, $TH9txtNumJSpell, $TH10txtNumJSpell, $TH11txtNumJSpell, $TH12txtNumJSpell, $TH13txtNumJSpell, $TH14txtNumJSpell
Global $TH6txtNumFSpell, $TH7txtNumFSpell, $TH8txtNumFSpell, $TH9txtNumFSpell, $TH10txtNumFSpell, $TH11txtNumFSpell, $TH12txtNumFSpell, $TH13txtNumFSpell, $TH14txtNumFSpell
Global $TH6txtNumCSpell, $TH7txtNumCSpell, $TH8txtNumCSpell, $TH9txtNumCSpell, $TH10txtNumCSpell, $TH11txtNumCSpell, $TH12txtNumCSpell, $TH13txtNumCSpell, $TH14txtNumCSpell
Global $TH6txtNumISpell, $TH7txtNumISpell, $TH8txtNumISpell, $TH9txtNumISpell, $TH10txtNumISpell, $TH11txtNumISpell, $TH12txtNumISpell, $TH13txtNumISpell, $TH14txtNumISpell
Global $TH6txtNumPSpell, $TH7txtNumPSpell, $TH8txtNumPSpell, $TH9txtNumPSpell, $TH10txtNumPSpell, $TH11txtNumPSpell, $TH12txtNumPSpell, $TH13txtNumPSpell, $TH14txtNumPSpell
Global $TH6txtNumESpell, $TH7txtNumESpell, $TH8txtNumESpell, $TH9txtNumESpell, $TH10txtNumESpell, $TH11txtNumESpell, $TH12txtNumESpell, $TH13txtNumESpell, $TH14txtNumESpell
Global $TH6txtNumHaSpell, $TH7txtNumHaSpell, $TH8txtNumHaSpell, $TH9txtNumHaSpell, $TH10txtNumHaSpell, $TH11txtNumHaSpell, $TH12txtNumHaSpell, $TH13txtNumHaSpell, $TH14txtNumHaSpell
Global $TH6txtNumSkSpell, $TH7txtNumSkSpell, $TH8txtNumSkSpell, $TH9txtNumSkSpell, $TH10txtNumSkSpell, $TH11txtNumSkSpell, $TH12txtNumSkSpell, $TH13txtNumSkSpell, $TH14txtNumSkSpell
Global $TH6txtNumBaSpell, $TH7txtNumBaSpell, $TH8txtNumBaSpell, $TH9txtNumBaSpell, $TH10txtNumBaSpell, $TH11txtNumBaSpell, $TH12txtNumBaSpell, $TH13txtNumBaSpell, $TH14txtNumBaSpell
Global $TH6txtNumWallw, $TH7txtNumWallw, $TH8txtNumWallw, $TH9txtNumWallw, $TH10txtNumWallw, $TH11txtNumWallw, $TH12txtNumWallw, $TH13txtNumWallw, $TH14txtNumWallw
Global $TH6txtNumBattleB, $TH7txtNumBattleB, $TH8txtNumBattleB, $TH9txtNumBattleB, $TH10txtNumBattleB, $TH11txtNumBattleB, $TH12txtNumBattleB, $TH13txtNumBattleB, $TH14txtNumBattleB
Global $TH6txtNumStoneS, $TH7txtNumStoneS, $TH8txtNumStoneS, $TH9txtNumStoneS, $TH10txtNumStoneS, $TH11txtNumStoneS, $TH12txtNumStoneS, $TH13txtNumStoneS, $TH14txtNumStoneS
Global $TH6txtNumSiegeB, $TH7txtNumSiegeB, $TH8txtNumSiegeB, $TH9txtNumSiegeB, $TH10txtNumSiegeB, $TH11txtNumSiegeB, $TH12txtNumSiegeB, $TH13txtNumSiegeB, $TH14txtNumSiegeB
Global $TH6txtNumLogL, $TH7txtNumLogL, $TH8txtNumLogL, $TH9txtNumLogL, $TH10txtNumLogL, $TH11txtNumLogL, $TH12txtNumLogL, $TH13txtNumLogL, $TH14txtNumLogL
Global $TH6txtNumFlameF, $TH7txtNumFlameF, $TH8txtNumFlameF, $TH9txtNumFlameF, $TH10txtNumFlameF, $TH11txtNumFlameF, $TH12txtNumFlameF, $TH13txtNumFlameF, $TH14txtNumFlameF
Global $TH6txtNumKing, $TH7txtNumKing, $TH8txtNumKing, $TH9txtNumKing, $TH10txtNumKing, $TH11txtNumKing, $TH12txtNumKing, $TH13txtNumKing, $TH14txtNumKing
Global $TH6txtNumKingSecond, $TH7txtNumKingSecond, $TH8txtNumKingSecond, $TH9txtNumKingSecond, $TH10txtNumKingSecond, $TH11txtNumKingSecond, $TH12txtNumKingSecond, $TH13txtNumKingSecond, $TH14txtNumKingSecond
Global $TH6txtNumQueen, $TH7txtNumQueen, $TH8txtNumQueen, $TH9txtNumQueen, $TH10txtNumQueen, $TH11txtNumQueen, $TH12txtNumQueen, $TH13txtNumQueen, $TH14txtNumQueen
Global $TH6txtNumQueenSecond, $TH7txtNumQueenSecond, $TH8txtNumQueenSecond, $TH9txtNumQueenSecond, $TH10txtNumQueenSecond, $TH11txtNumQueenSecond, $TH12txtNumQueenSecond, $TH13txtNumQueenSecond, $TH14txtNumQueenSecond
Global $TH6txtNumWarden, $TH7txtNumWarden, $TH8txtNumWarden, $TH9txtNumWarden, $TH10txtNumWarden, $TH11txtNumWarden, $TH12txtNumWarden, $TH13txtNumWarden, $TH14txtNumWarden
Global $TH6txtNumWardenSecond, $TH7txtNumWardenSecond, $TH8txtNumWardenSecond, $TH9txtNumWardenSecond, $TH10txtNumWardenSecond, $TH11txtNumWardenSecond, $TH12txtNumWardenSecond, $TH13txtNumWardenSecond, $TH14txtNumWardenSecond
Global $TH6txtNumRoyaleC, $TH7txtNumRoyaleC, $TH8txtNumRoyaleC, $TH9txtNumRoyaleC, $TH10txtNumRoyaleC, $TH11txtNumRoyaleC, $TH12txtNumRoyaleC, $TH13txtNumRoyaleC, $TH14txtNumRoyaleC
Global $TH6txtNumRoyaleCSecond, $TH7txtNumRoyaleCSecond, $TH8txtNumRoyaleCSecond, $TH9txtNumRoyaleCSecond, $TH10txtNumRoyaleCSecond, $TH11txtNumRoyaleCSecond, $TH12txtNumRoyaleCSecond, $TH13txtNumRoyaleCSecond, $TH14txtNumRoyaleCSecond


Global $TrainBarb, $TrainSBarb, $TrainArcher, $TrainSArcher, $TrainGiant, $TrainSGiant, $TrainGoblin, $TrainSGoblin, $TrainWallB ,$TrainSWallB, _
	   $TrainBalloon, $TrainRBalloon, $TrainWizard, $TrainSWizard, $TrainHealer, $TrainDragon, $TrainSDragon, $TrainIDragon, $TrainPekka, $TrainBabyDragon, _
	   $TrainMiner, $TrainEDrag, $TrainYeti, $TrainDragonR, $TrainMini, $TrainSMini, $TrainHogsRider, $TrainValkyre, $TrainSValkyre, _
	   $TrainGolem, $TrainWitch, $TrainSWitch, $TrainLava, $TrainIHound, $TrainBowler, $TrainSBowler, $TrainIceGolem, $TrainHunter, _
	   $TrainLSpell, $TrainHSpell, $TrainRSpell, $TrainJSpell, $TrainFSpell, $TrainPSpell, $TrainCSpell, $TrainISpell, $TrainESpell, $TrainHaSpell, $TrainSkSpell, $TrainBaSpell, _
	   $TrainBattleB, $TrainWallw, $TrainStoneS, $TrainSiegeB, $TrainLogL, $TrainFlameF, _
	   $TrainKing, $TrainQueen, $TrainWarden, $TrainRoyaleC

Global $TH6RequestCCInbox, $TH7RequestCCInbox, $TH8RequestCCInbox ,$TH9RequestCCInbox, $TH10RequestCCInbox, $TH11RequestCCInbox, $TH12RequestCCInbox, $TH13RequestCCInbox, $TH14RequestCCInbox
Global $TH6RequestCCLabel, $TH7RequestCCLabel, $TH8RequestCCLabel, $TH9RequestCCLabel, $TH10RequestCCLabel, $TH11RequestCCLabel, $TH12RequestCCLabel, $TH13RequestCCLabel, $TH14RequestCCLabel
Global $TH6RequestCSV, $TH7RequestCSV, $TH8RequestCSV, $TH9RequestCSV, $TH10RequestCSV, $TH11RequestCSV, $TH12RequestCSV, $TH13RequestCSV, $TH14RequestCSV
Global $CCRequestCSVWrite = "" ;This will be written by program if user set train cc req
Global $CCRequestCSVEnter = ""
Global $TrainCSVWrite = "" ;This will be written by program if user set train
Global $TrainEnter = "      |_TROOPNAME_|____TH06___|____TH07___|____TH08___|____TH09___|____TH10___|____TH11___|____TH12___|____TH13___|____TH14___|"
Global $TrainShowControl = "TH6"

Global $UseDoRandomiseDB
Global $UseDontRandomiseDB
Global $UseDoRandomiseAB
Global $UseDontRandomiseAB

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~ TAB VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $g_hTabCSV_Maker = 0 ;just an idea ??


;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ RANDOMISE VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $DoRandomiseDB, $DoRandomiseAB ; Checkboxes in Mybot Gui to Randomise
Global $DontRandomiseDB, $DontRandomiseAB ;Checkboxes in Mybot Gui not to Randomise
Global $SeeRandomisedAB, $SeeRandomisedDB ;Buttons to see randomised csv file in Mybot Gui
Global $IndexOfComboDB, $IndexOfComboAB ;Variables to get Number of ındex from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB
Global $CSVFileName_inDB_Combo, $CSVFileName_inAB_Combo ; Variables to get Name of csv file from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB
Global $CSVFileName_inDB_Combo_For_Randomise, $CSVFileName_inAB_Combo_For_Randomise ; Variables to get Name of csv file from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB in Randomise Functions
Global $GetFileListFromDBScriptedCMB, $GetFileListFromABScriptedCMB ; Find file(s) to read if there is file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $FileListFromOriginalFolder ; Control variable if there is file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $ReadFile ; Path of read file
Global $CSVLines ; Array that contain $ReadFile lines
Global $SplitCSVLine ;Array that contain $CSVLines slot with decimal "|" This will work if any W[NUMBER] is found in $CSVLines[]
Global $IndexOfDropCommand ;Converted Integer Index for DROP command
Global $StringNewIndex ; String with blanks (11 Peices) of $IndexOfDropCommand for CSV file
Global $LowIndexLimit,$HighIndexLimit ;Converted Index Value min=1 max =10
Global $NewDropCommand ;Converted DROP Command Line
Global $AddedCommand ; Main Converted Part of CSV
Global $ConvertedFileInAttack ;FileWrite Variables for Converted CSV
Global $RealName ;Name of Real name BackUp File
Global $CheckifFiles ; BackUp Control Variable to check if there is a file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $g_bDoRandomiseDB,$g_bDoRandomiseAB ;Config
Global $g_bDontRandomiseDB,$g_bDontRandomiseAB ;Config
Global $infopicforWidenessAB,$infopicforWidenessDB ;info for wideness option..

;~ ########################################################################################################################

