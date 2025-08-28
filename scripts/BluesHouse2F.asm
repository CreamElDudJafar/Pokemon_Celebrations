BluesHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, BluesHouse2F_ScriptPointers
	ld a, 0
	call CallFunctionInTable
	ret

BluesHouse2F_ScriptPointers:
	def_script_pointers
	dw_const DoRet,           SCRIPT_BLUESHOUSE2F_DEFAULT

BluesHouse2F_TextPointers:
	def_text_pointers

	text_end ; unused
