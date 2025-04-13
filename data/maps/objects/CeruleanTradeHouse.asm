	object_const_def
	const_export CERULEANTRADEHOUSE_MELANIE
	const_export CERULEANTRADEHOUSE_BULBASAUR
	const_export CERULEANTRADEHOUSE_GRANNY
	const_export CERULEANTRADEHOUSE_GAMBLER

CeruleanTradeHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GIRL, STAY, DOWN, TEXT_CERULEANTRADEHOUSE_MELANIE
	object_event  5,  1, SPRITE_BULBASAUR, STAY, DOWN, TEXT_CERULEANTRADEHOUSE_BULBASAUR
	object_event  5,  4, SPRITE_GRANNY, STAY, LEFT, TEXT_CERULEANTRADEHOUSE_GRANNY
	object_event  0,  2, SPRITE_GAMBLER, STAY, NONE, TEXT_CERULEANTRADEHOUSE_GAMBLER

	def_warps_to CERULEAN_TRADE_HOUSE
