LoadBillsPCExtraTiles::
	ld hl, vChars2 tile $78
	ld de, PokeballTileGraphics ; pokeball tile
	lb bc, BANK(PokeballTileGraphics), 1
	call CopyVideoData
	ld hl, vChars2 tile $77
	ld de, PokeballTileGraphics tile 2 ; pokeball with x tile
	lb bc, BANK(PokeballTileGraphics), 1
	call CopyVideoData
	ld de, HpBarAndStatusGraphics tile 18 ; "No" tile
	ld hl, vChars2 tile $76
	lb bc, BANK(HpBarAndStatusGraphics), 1
	call CopyVideoData
	ld de, ExtraMenuBorderConnectors
	ld hl, vChars1 tile $40
	lb bc, BANK(ExtraMenuBorderConnectors), 8
	call CopyVideoDataDouble
	ld de, FromToChangeBoxPrompt
	ld hl, vChars1 tile $48
	lb bc, BANK(FromToChangeBoxPrompt), 5
	jp CopyVideoDataDouble
	

