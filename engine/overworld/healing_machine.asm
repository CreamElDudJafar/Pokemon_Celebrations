AnimateHealingMachine:
	ld de, PokeCenterFlashingMonitorAndHealBall
	ld hl, vChars0 tile $7c
	lb bc, BANK(PokeCenterFlashingMonitorAndHealBall), 2
	call CopyVideoData
	ld hl, wUpdateSpritesEnabled
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	ldh a, [rOBP1]
	push af
	ld a, $e0
	ldh [rOBP1], a
	call UpdateGBCPal_OBP1
	ld hl, wShadowOAMSprite33
	ld de, PokeCenterOAMData
	call CopyHealingMachineOAM
	ld a, 4
	ld [wAudioFadeOutControl], a
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	rst _PlaySound
.waitLoop
	ld a, [wAudioFadeOutControl]
	and a ; is fade-out finished?
	jr nz, .waitLoop ; if not, check again
	ld a, [wPartyCount]
	ld b, a
.partyLoop
	call CopyHealingMachineOAM
	ld a, SFX_HEALING_MACHINE
	rst _PlaySound
	ld c, 30
	rst _DelayFrames
	dec b
	jr nz, .partyLoop
	ld a, [wAudioROMBank]
	cp BANK("Audio Engine 3")
	ld [wAudioSavedROMBank], a
	jr nz, .next
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	rst _PlaySound
	ld a, BANK(Music_PkmnHealed)
	ld [wAudioROMBank], a
.next
	ld a, MUSIC_PKMN_HEALED
	ld [wNewSoundID], a
	rst _PlaySound
	ld d, $28
	call FlashSprite8Times
.waitLoop2
	ld a, [wChannelSoundIDs]
	cp MUSIC_PKMN_HEALED ; is the healed music still playing?
	jr z, .waitLoop2 ; if so, check gain
	ld c, 32
	rst _DelayFrames
	pop af
	ldh [rOBP1], a
	call UpdateGBCPal_OBP1
	pop hl
	pop af
	ld [hl], a
	jp UpdateSprites

PokeCenterFlashingMonitorAndHealBall:
	INCBIN "gfx/overworld/heal_machine.2bpp"

PokeCenterOAMData:
; shinpokerednote: gbcnote: updated for GBC
	db $24,$34,$7C,$14 ; heal machine monitor
	db $2B,$30,$7D,$14 ; pokeballs 1-6
	db $2B,$38,$7D,$34
	db $30,$30,$7D,$14
	db $30,$38,$7D,$34
	db $35,$30,$7D,$14
	db $35,$38,$7D,$34
	
; d = value to xor with palette
FlashSprite8Times:
	ld b, 8
.loop
	ldh a, [rOBP1]
	xor d
	ldh [rOBP1], a
	call UpdateGBCPal_OBP1
	ld c, 10
	rst _DelayFrames
	dec b
	jr nz, .loop
	ret

CopyHealingMachineOAM:
; copy one OAM entry and advance the pointers
REPT 4
	ld a, [de]
	inc de
	ld [hli], a
ENDR
	ret
