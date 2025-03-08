NamePointers::
; entries correspond to *_NAME constants
	dw MonsterNames
	dw MoveNames
	dw tmhmNames ;
	dw ItemNames
	dw wPartyMonOT ; player's OT names list
	dw wEnemyMonOT ; enemy's OT names list
	dw TrainerNames

GetName::
; arguments:
; [wd0b5] = which name
; [wNameListType] = which list
; [wPredefBank] = bank of list
;
; returns pointer to name in de
	ld a, [wd0b5]
	ld [wd11e], a

	; TM names are separate from item names.
	; BUG: This applies to all names instead of just items.
	;joenote - fixing the aforementioned bug
	push bc
	ld b, a
	ld a, [wNameListType]
	cp ITEM_NAME
	ld a, b
	pop bc
	jr nz, .notMachine	;if the list type is not items, then A cannot be referring to a machine
	;At this line, definitely working with an item list. So see if it's a machine or item
	cp HM01
	;jp nc, GetMachineName	;joenote - function removed. Handle list-based tm & hm names here.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;joenote - do some stuff if the item is a machine
	jr c, .notMachine
	sub (HM01 - 1)	;need to shift things because tm and hm constants are offset by +$C3 from the first item constant
	ld [wd0b5], a
	ld a, TMHM_NAME	
	ld [wNameListType], a
.notMachine
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld a, [hLoadedROMBank]
	push af
	push hl
	push bc
	push de
	ld a, [wNameListType]    ;List3759_entrySelector
	dec a
	jr nz, .otherEntries
	;1 = MON_NAMES
	call GetMonName
	ld hl, NAME_LENGTH
	add hl, de
	ld e, l
	ld d, h
	jr .gotPtr
.otherEntries
	;2-7 = OTHER ENTRIES
	ld a, [wPredefBank]
	ld [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wNameListType]    ;VariousNames' entryID
	dec a
	add a
	ld d, 0
	ld e, a
	jr nc, .skip
	inc d
.skip
	ld hl, NamePointers
	add hl, de
	ld a, [hli]
	ld [$ff96], a
	ld a, [hl]
	ld [$ff95], a
	ld a, [$ff95]
	ld h, a
	ld a, [$ff96]
	ld l, a
	ld a, [wd0b5]
	ld b, a
	ld c, 0
.nextName
	ld d, h
	ld e, l
.nextChar
	ld a, [hli]
	cp "@"
	jr nz, .nextChar
	inc c           ;entry counter
	ld a, b          ;wanted entry
	cp c
	jr nz, .nextName
	ld h, d
	ld l, e
	ld de, wcd6d
	ld bc, $0014
	rst _CopyData
.gotPtr
;	ld a, e
;	ld [wUnusedCF8D], a
;	ld a, d
;	ld [wUnusedCF8D + 1], a

	ld a, [wd11e]
	cp HM01
	jr c, .notMachine2
	ld a, ITEM_NAME	;this needs to be reset because machines can be in the same listings as items	
	ld [wNameListType], a
.notMachine2

	pop de
	pop bc
	pop hl
	pop af
	ld [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

