PokemonLogoGraphics: INCBIN "gfx/title/pokemon_logo.2bpp"
FontGraphics:: INCBIN "gfx/font/font.1bpp"
FontGraphicsEnd::

ABTiles: INCBIN "gfx/font/AB.2bpp"

HpBarAndStatusGraphics:: INCBIN "gfx/font/font_battle_extra.2bpp"
HpBarAndStatusGraphicsEnd::

BattleHudTiles1: INCBIN "gfx/battle/battle_hud_1.1bpp"
BattleHudTiles1End:
BattleHudTiles2: INCBIN "gfx/battle/battle_hud_2.1bpp"
BattleHudTiles3: INCBIN "gfx/battle/battle_hud_3.1bpp"
BattleHudTiles3End:

IF DEF(_GREEN)
NintendoCopyrightLogoGraphics: INCBIN "gfx/splash/copyright_green.2bpp"
ELSE
NintendoCopyrightLogoGraphics: INCBIN "gfx/splash/copyright.2bpp"
ENDC

IF DEF(_GREEN)
GameFreakLogoGraphics: INCBIN "gfx/title/gamefreak_inc_green.2bpp"
GameFreakLogoGraphicsEnd:
ELSE
GameFreakLogoGraphics: INCBIN "gfx/title/gamefreak_inc.2bpp"
GameFreakLogoGraphicsEnd:
ENDC

TextBoxGraphics:: INCBIN "gfx/font/font_extra.2bpp"
TextBoxGraphicsEnd::

PokedexTileGraphics: INCBIN "gfx/pokedex/pokedex.2bpp"
PokedexTileGraphicsEnd:

WorldMapTileGraphics: INCBIN "gfx/town_map/town_map.2bpp"
WorldMapTileGraphicsEnd:

MonNestOptionsTileGraphics: INCBIN "gfx/town_map/mon_nest_options.2bpp" ; marcelnote - new
MonNestOptionsTileGraphicsEnd:

IF (DEF(_RED) || DEF(_BLUE)) 
PlayerCharacterTitleGraphics: INCBIN "gfx/title/player.2bpp"
ELSE
PlayerCharacterTitleGraphics: INCBIN "gfx/title/player_green.2bpp"
ENDC
PlayerCharacterTitleGraphicsEnd:

EXPBarGraphics::  INCBIN "gfx/battle/exp_bar.2bpp"
EXPBarGraphicsEnd::
