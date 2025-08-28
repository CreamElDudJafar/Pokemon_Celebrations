PrintBlueSNESText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump BlueBedroomSNESText

BlueBedroomSNESText::
	text_far _BlueBedroomSNESText
	text_end

OpenBluesPC:
	call EnableAutoTextBoxDrawing
	tx_pre_jump BlueBedroomPCText

BlueBedroomPCText::
	script_players_pc

;	ret ; unused

;UnusedPredefText::
;	db "@"

PrintBookcaseText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump BookcaseText

BookcaseText::
	text_far _BookcaseText
	text_end
