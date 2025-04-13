VermilionTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionTradeHouse_TextPointers:
	def_text_pointers
	dw_const VermilionTradeHouseLittleGirlText,   TEXT_VERMILIONTRADEHOUSE_LITTLE_GIRL
	dw_const VermilionTradeHouseOfficerJennyText, TEXT_VERMILIONTRADEHOUSE_OFFICER_JENNY

VermilionTradeHouseLittleGirlText:
	text_asm
	ld a, TRADE_FOR_DUX
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	rst TextScriptEnd

VermilionTradeHouseOfficerJennyText:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	CheckEvent EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY
	jr nz, .asm_1cfbf
	ld hl, VermilionHouse1Text_1cfc8
	rst _PrintText
	ld a, [wObtainedBadges]
	bit 2, a ;  ; THUNDER BADGE
	jr z,  .asm_1cfb3
	ld hl, VermilionHouse1Text_1cfce
	rst _PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_1cfb6
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, SQUIRTLE
	ld [wd11e], a
	ld [wcf91], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, SQUIRTLE, 10
	call GivePokemon
	jr nc, .asm_1cfb3
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, VermilionHouse1Text_1cfd3
	rst _PrintText
	SetEvent EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY
.asm_1cfb3
	rst TextScriptEnd

.asm_1cfb6
	ld hl, VermilionHouse1Text_1cfdf
	rst _PrintText
	rst TextScriptEnd

.asm_1cfbf
	ld hl, VermilionHouse1Text_1cfd9
	call PrintText
	rst TextScriptEnd

VermilionHouse1Text_1cfc8:
	text_far OfficerJennyText1
	text_waitbutton
	text_end

VermilionHouse1Text_1cfce:
	text_far OfficerJennyText2
	text_end

VermilionHouse1Text_1cfd3:
	text_far OfficerJennyText3
	text_waitbutton
	text_end

VermilionHouse1Text_1cfd9:
	text_far OfficerJennyText4
	text_waitbutton
	text_end

VermilionHouse1Text_1cfdf:
	text_far OfficerJennyText5
	text_waitbutton
	text_end
