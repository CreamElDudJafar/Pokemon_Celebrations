CopyBaseStats:
	ld a, [wd11e]
	dec a
	ld hl, BaseStats
	ld bc, BASE_DATA_SIZE
	call AddNTimes
	ld de, wMonHeader
	jp CopyData