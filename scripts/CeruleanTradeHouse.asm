CeruleanTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTradeHouse_TextPointers:
	def_text_pointers
	dw_const CeruleanTradeHouseMelanieText, TEXT_CERULEANTRADEHOUSE_MELANIE
	dw_const CeruleanTradeHouseBulbasaurText, TEXT_CERULEANTRADEHOUSE_BULBASAUR
	dw_const CeruleanTradeHouseGrannyText,  TEXT_CERULEANTRADEHOUSE_GRANNY
	dw_const CeruleanTradeHouseGamblerText, TEXT_CERULEANTRADEHOUSE_GAMBLER

CeruleanTradeHouseGrannyText:
	text_far _CeruleanTradeHouseGrannyText
	text_end

CeruleanTradeHouseGamblerText:
	text_asm
	ld a, TRADE_FOR_LOLA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	rst TextScriptEnd

CeruleanTradeHouseMelanieText:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	CheckEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
	jr nz, .asm_1cfbf
	ld hl, CeruleanHouse1Text_1cfc8
	rst _PrintText
	ld a, [wObtainedBadges]
	bit 1, a ;  ; CASCADE BADGE
	jr z, .asm_1cfb3
	ld hl, CeruleanHouse1Text_1cfce
	rst _PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_1cfb6
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, BULBASAUR
	ld [wd11e], a
	ld [wcf91], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, BULBASAUR, 10
	call GivePokemon
	jr nc, .asm_1cfb3
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, CeruleanHouse1Text_1cfd3
	rst _PrintText
	ld a, HS_CERULEAN_BULBASAUR
	ld [wMissableObjectIndex], a
	predef HideObject
	SetEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
.asm_1cfb3
	rst TextScriptEnd

.asm_1cfb6
	ld hl, CeruleanHouse1Text_1cfdf
	rst _PrintText
	rst TextScriptEnd

.asm_1cfbf
	ld hl, CeruleanHouse1Text_1cfd9
	call PrintText
	rst TextScriptEnd

CeruleanHouse1Text_1cfc8:
	text_far MelanieText1
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfce:
	text_far MelanieText2
	text_end

CeruleanHouse1Text_1cfd3:
	text_far MelanieText3
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfd9:
	text_far MelanieText4
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfdf:
	text_far MelanieText5
	text_waitbutton
	text_end

CeruleanTradeHouseBulbasaurText:
	text_far MelanieBulbasaurText
	text_asm
	ld a, BULBASAUR
	call PlayCry
	rst TextScriptEnd