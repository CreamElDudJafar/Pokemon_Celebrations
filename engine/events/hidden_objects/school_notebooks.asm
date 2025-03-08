PrintNotebookText:
	call EnableAutoTextBoxDrawing
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, [wHiddenObjectFunctionArgument]
	jp PrintPredefTextID

TMNotebook::
	text_far TMNotebookText
	text_waitbutton
	text_end

ViridianSchoolNotebook::
	text_asm
	ld hl, ViridianSchoolNotebookText1
	rst _PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, ViridianSchoolNotebookText2
	rst _PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, ViridianSchoolNotebookText3
	rst _PrintText
	call TurnPageSchoolNotebook
	jr nz, .doneReading
	ld hl, ViridianSchoolNotebookText4
	rst _PrintText
	ld hl, ViridianSchoolNotebookText5
	rst _PrintText
.doneReading
	jp TextScriptEnd

TurnPageSchoolNotebook:
	ld hl, TurnPageText
	rst _PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ret

TurnPageText:
	text_far _TurnPageText
	text_end

ViridianSchoolNotebookText5:
	text_far _ViridianSchoolNotebookText5
	text_waitbutton
	text_end

ViridianSchoolNotebookText1:
	text_far _ViridianSchoolNotebookText1
	text_end

ViridianSchoolNotebookText2:
	text_far _ViridianSchoolNotebookText2
	text_end

ViridianSchoolNotebookText3:
	text_far _ViridianSchoolNotebookText3
	text_end

ViridianSchoolNotebookText4:
	text_far _ViridianSchoolNotebookText4
	text_end
