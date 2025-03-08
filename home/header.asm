; rst vectors (unused)

SECTION "rst0", ROM0[$0000]
_Bankswitch::
    jp Bankswitch

; PureRGBnote: MOVED: 5 extra bytes of space left here, may as well move something here that puts the space to some use
MartSignText::
	text_far _MartSignText
	text_end

SECTION "rst8", ROM0[$0008]
_Predef::
	jp Predef

; PureRGBnote: MOVED: 5 extra bytes of space left here, may as well move something here that puts the space to some use
PokemartGreetingText::
	text_far _PokemartGreetingText
	text_end

SECTION "rst10", ROM0[$0010]
_DelayFrame::
	jp DelayFrame

PokeCenterSignText::
	text_far _PokeCenterSignText
	text_end

SECTION "rst18", ROM0[$0018]
_DelayFrames::
	jp DelayFrames

TextIDErrorText:: ; "[hTextID] ERROR."
	text_far _TextIDErrorText
	text_end

SECTION "rst20", ROM0[$0020]
_CopyData::
	jp CopyData

PokemonFaintedText::
	text_far _PokemonFaintedText
	text_end

SECTION "rst28", ROM0[$0028]
_PrintText::
	jp PrintText

PlayerBlackedOutText::
	text_far _PlayerBlackedOutText
	text_end

SECTION "rst30", ROM0[$0030]
_PlaySound::
	jp PlaySound

RepelWoreOffText::
	text_far _RepelWoreOffText
	text_end

SECTION "rst38", ROM0[$0038]
TextScriptEnd::
        pop hl ; turn the rst call into a jp by popping off the return address
TextScriptEndNoPop::
        ld hl, TextScriptEndingText
DoRet::
        ret

TextScriptEndingText::
	text_end

; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp VBlank

	ds $48 - @, 0 ; unused

SECTION "lcd", ROM0[$0048]
	rst $38

	ds $50 - @, 0 ; unused

SECTION "timer", ROM0[$0050]
	jp Timer

	ds $58 - @, 0 ; unused

SECTION "serial", ROM0[$0058]
	jp Serial

	ds $60 - @, 0 ; unused

SECTION "joypad", ROM0[$0060]
	reti


SECTION "Header", ROM0[$0100]

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @

ENDSECTION
