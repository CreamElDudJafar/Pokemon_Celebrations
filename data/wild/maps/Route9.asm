Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, RATTATA
	db 16, SPEAROW
	db 14, VENONAT
IF (DEF(_RED) || DEF(_GREEN)) 
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, RATTATA
	db 17, PINSIR
	db 13, LICKITUNG
	db 17, LICKITUNG
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, RATTATA
	db 17, PINSIR
	db 13, LICKITUNG
	db 17, LICKITUNG
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
