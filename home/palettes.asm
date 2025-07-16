RestoreScreenTilesAndReloadTilePatterns::
	call ClearSprites
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	call ReloadMapSpriteTilePatterns
	call LoadScreenTilesFromBuffer2
	call LoadTextBoxTilePatterns
	call RunDefaultPaletteCommand
	jr Delay3

GBPalWhiteOutWithDelay3::
	call GBPalWhiteOut

Delay3::
; The bg map is updated each frame in thirds.
; Wait three frames to let the bg map fully update.
	ld c, 3
	jp DelayFrames

;gbcnote - new functions
UpdateGBCPal_BGP::
	push af
	ld a, [hGBC]
	and a
	jr z, .notGBC
	push bc
	push de
	push hl
	ld a, [rBGP]
	ld b, a
	ld a, [wLastBGP]
	cp b
	jr z, .noChangeInBGP
	farcall _UpdateGBCPal_BGP
.noChangeInBGP
	pop hl
	pop de
	pop bc
.notGBC
	pop af
	ret
	
UpdateGBCPal_OBP0::
	push af
	ld a, [hGBC]
	and a
	jr z, .notGBC
	push bc
	push de
	push hl
	ld a, [rOBP0]
	ld b, a
	ld a, [wLastOBP0]
	cp b
	jr z, .noChangeInOBP0
	ld d, CONVERT_OBP0
	farcall _UpdateGBCPal_OBP
.noChangeInOBP0
	pop hl
	pop de
	pop bc
.notGBC
	pop af
	ret
	
UpdateGBCPal_OBP1::
	push af
	ld a, [hGBC]
	and a
	jr z, .notGBC
	push bc
	push de
	push hl
	ld a, [rOBP1]
	ld b, a
	ld a, [wLastOBP1]
	cp b
	jr z, .noChangeInOBP1
	ld d, CONVERT_OBP1
	farcall _UpdateGBCPal_OBP
.noChangeInOBP1
	pop hl
	pop de
	pop bc
.notGBC
	pop af
	ret

GBPalNormal::
; Reset BGP and OBP0.
	ld a, %11100100 ; 3210
	ldh [rBGP], a
	ld a, %11010000 ; 3100
	ldh [rOBP0], a
	call UpdateGBCPal_BGP
	call UpdateGBCPal_OBP0
	call UpdateGBCPal_OBP1
	ret

GBPalWhiteOut::
; White out all palettes.
	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	call UpdateGBCPal_BGP
	call UpdateGBCPal_OBP0
	call UpdateGBCPal_OBP1
	ret

RunDefaultPaletteCommand::
	ld b, SET_PAL_DEFAULT
RunPaletteCommand::
	ld a, [wOnSGB]
	and a
	ret z
	predef_jump _RunPaletteCommand

GetHealthBarColor::
; Return at hl the palette of
; an HP bar e pixels long.
	ld a, e
	cp 27
	ld d, 0 ; green
	jr nc, .gotColor
	cp 10
	inc d ; yellow
	jr nc, .gotColor
	inc d ; red
.gotColor
	ld [hl], d
	ret

Func_3082:: ; added from pokeyellow - update audio so it doesn't "lag"
	ldh a, [hLoadedROMBank]
	push af
	farcall FadeOutAudio
	callbs Music_DoLowHealthAlarm
	callbs Audio1_UpdateMusic
	pop af
	jp BankswitchCommon