LavenderCuboneHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

LavenderCuboneHouse_TextPointers:
	def_text_pointers
	dw_const LavenderCuboneHouseCuboneText,       TEXT_LAVENDERCUBONEHOUSE_CUBONE
	dw_const LavenderCuboneHouseBrunetteGirlText, TEXT_LAVENDERCUBONEHOUSE_BRUNETTE_GIRL

LavenderCuboneHouseCuboneText:
	text_far _LavenderCuboneHouseCuboneText
	text_asm
	ld a, CUBONE
	call PlayCry
	rst TextScriptEnd

LavenderCuboneHouseBrunetteGirlText:
	text_asm
	CheckEvent EVENT_RESCUED_MR_FUJI
	jr nz, .rescued_mr_fuji
	ld hl, .PoorCubonesMotherText
	rst _PrintText
	jr .done
.rescued_mr_fuji
	ld hl, .TheGhostIsGoneText
	rst _PrintText
.done
	rst TextScriptEnd

.PoorCubonesMotherText:
	text_far _LavenderCuboneHouseBrunetteGirlPoorCubonesMotherText
	text_end

.TheGhostIsGoneText:
	text_far _LavenderCuboneHouseBrunetteGirlGhostIsGoneText
	text_end
