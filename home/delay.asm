DelayFrames::
; wait c frames
	rst _DelayFrame
	dec c
	jr nz, DelayFrames
	ret
