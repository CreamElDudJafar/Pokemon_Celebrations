; shinpokerednote: ADDED: this function handles quick-use of fishing and biking on pressing select.
; PureRGBnote: at the moment fishing with select is commented out since we've made it easier to select from the item menu the rod repeatedly.
CheckForRodBike::
	ld a, [wd732]
	bit 5, a
	ret nz
	; do nothing if surfing
	ld a, [wWalkBikeSurfState]
	cp 2 ; SURFING
	ret z
	;else check if bike is in bag
	ld b, BICYCLE
	push bc
	call IsItemInBag
	pop bc
	ret z

.start
	ld a, [wWalkBikeSurfState]
	cp 1 ; BIKING
	jr z, .gotOff
	CheckEvent EVENT_SAW_GOT_ON_BIKE_TEXT
	jr z, PrepareText
	jr .sawText
.gotOff
	CheckEvent EVENT_SAW_GOT_OFF_BIKE_TEXT
	jr z, PrepareText
.sawText
	call IsBikeRidingAllowed
	jr nc, PrepareText
	call UseBike
	jp LoadPlayerSpriteGraphics ; instant bike usage


PrepareText:
	;initialize a text box without drawing anything special
	ld a, 1
	ld [wAutoTextBoxDrawingControl], a
	callfar DisplayTextIDInit

	call UseBike
	
	;use $ff value loaded into hTextID to make DisplayTextID display nothing and close any text
	ld a, $FF
	ldh [hSpriteIndexOrTextID], a
	jp DisplayTextID

UseBike:
	;determine item to use
	ld a, BICYCLE
	ld [wcf91], a	;load item to be used
	ld [wd11e], a	;load item so its name can be grabbed
	call GetItemName	;get the item name into de register
	call CopyToStringBuffer ; copy name from de to wcf4b so it shows up in text
	jp UseItem	;use the item
	