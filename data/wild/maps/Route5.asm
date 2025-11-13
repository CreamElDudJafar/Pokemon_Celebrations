Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF (DEF(_RED) || DEF(_GREEN)) 
	db 13, ODDISH
	db 13, PIDGEY
	db 15, FARFETCHD
	db 10, MEOWTH
	db 12, MANKEY
	db 15, ODDISH
	db 16, GROWLITHE
	db 14, GROWLITHE
	db 16, VULPIX
	db 16, VULPIX
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, FARFETCHD
	db 10, MEOWTH
	db 12, MANKEY
	db 15, BELLSPROUT
	db 16, GROWLITHE
	db 14, GROWLITHE
	db 16, VULPIX
	db 16, VULPIX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
