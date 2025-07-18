; default hidden/shown objects for each map

MapHSPointers:
; entries correspond to map ids
	table_width 2, MapHSPointers
	dw PalletTownHS
	dw ViridianCityHS
	dw PewterCityHS
	dw CeruleanCityHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SaffronCityHS
	dw NoHS
	dw Route1HS
	dw Route2HS
	dw NoHS
	dw Route4HS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw Route9HS
	dw NoHS
	dw NoHS
	dw Route12HS
	dw NoHS
	dw NoHS
	dw Route15HS
	dw Route16HS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw Route22HS
	dw NoHS
	dw Route24HS
	dw Route25HS
	dw NoHS
	dw NoHS
	dw BluesHouseHS
	dw OaksLabHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw ViridianGymHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw ViridianForestHS
	dw Museum1FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw MtMoon1FHS
	dw NoHS
	dw MtMoonB2FHS
	dw NoHS
	dw CeruleanTradeHouseHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw PowerPlantHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw BillsHouseHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SSAnne2FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SSAnne1FRoomsHS
	dw SSAnne2FRoomsHS
	dw SSAnneB1FRoomsHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw VictoryRoad1FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw LancesRoomHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw ChampionsRoomHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw CeladonMansionRoofHouseHS
	dw NoHS
	dw NoHS
	dw GameCornerHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw PokemonTower2FHS
	dw PokemonTower3FHS
	dw PokemonTower4FHS
	dw PokemonTower5FHS
	dw PokemonTower6FHS
	dw PokemonTower7FHS
	dw MrFujisHouseHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw WardensHouseHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SeafoamIslandsB1FHS
	dw SeafoamIslandsB2FHS
	dw SeafoamIslandsB3FHS
	dw SeafoamIslandsB4FHS
	dw NoHS
	dw NoHS
	dw PokemonMansion1FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw IndigoPlateauLobbyHS
	dw NoHS
	dw NoHS
	dw FightingDojoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SilphCo1FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SeafoamIslands1FHS
	dw NoHS
	dw VictoryRoad2FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw VictoryRoad3FHS
	dw RocketHideoutB1FHS
	dw RocketHideoutB2FHS
	dw RocketHideoutB3FHS
	dw RocketHideoutB4FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SilphCo2FHS
	dw SilphCo3FHS
	dw SilphCo4FHS
	dw SilphCo5FHS
	dw SilphCo6FHS
	dw SilphCo7FHS
	dw SilphCo8FHS
	dw PokemonMansion2FHS
	dw PokemonMansion3FHS
	dw PokemonMansionB1FHS
	dw SafariZoneEastHS
	dw SafariZoneNorthHS
	dw SafariZoneWestHS
	dw SafariZoneCenterHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw CeruleanCave2FHS
	dw CeruleanCaveB1FHS
	dw CeruleanCaveHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw SilphCo9FHS
	dw SilphCo10FHS
	dw SilphCo11FHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw LoreleisRoomHS
	dw BrunosRoomHS
	dw AgathasRoomHS
	assert_table_length NUM_MAPS
	dw -1 ; end

NoHS:
	db $FF, $FF, $FF

MissableObjects:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3, MissableObjects
; format: map id, object id, HIDE/SHOW

PalletTownHS:
	db PALLET_TOWN, PALLETTOWN_OAK, HIDE
ViridianCityHS:
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN_SLEEPY, SHOW
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN,        HIDE
PewterCityHS:
	db PEWTER_CITY, PEWTERCITY_SUPER_NERD1, SHOW
	db PEWTER_CITY, PEWTERCITY_YOUNGSTER,   SHOW
CeruleanCityHS:
	db CERULEAN_CITY, CERULEANCITY_RIVAL,       HIDE
	db CERULEAN_CITY, CERULEANCITY_ROCKET,      SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD1,      HIDE
	db CERULEAN_CITY, CERULEANCITY_SUPER_NERD3, SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD2,      SHOW
SaffronCityHS:
	db SAFFRON_CITY, SAFFRONCITY_ROCKET1,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET2,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET3,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET4,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET5,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET6,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET7,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_SCIENTIST,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_M, HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_F, HIDE
	db SAFFRON_CITY, SAFFRONCITY_GENTLEMAN,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_PIDGEOT,        HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKER,         HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKET8,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET9,        HIDE
Route1HS:
	db ROUTE_1, ROUTE1_OAK, HIDE ; PROF OAK fight. To test, change to SHOW.
Route2HS:
	db ROUTE_2, ROUTE2_MOON_STONE, SHOW
	db ROUTE_2, ROUTE2_HP_UP,      SHOW
Route4HS:
	db ROUTE_4, ROUTE4_TM_WHIRLWIND, SHOW
Route9HS:
	db ROUTE_9, ROUTE9_TM_TELEPORT, SHOW
Route12HS:
	db ROUTE_12, ROUTE12_SNORLAX,    SHOW
	db ROUTE_12, ROUTE12_TM_PAY_DAY, SHOW
	db ROUTE_12, ROUTE12_IRON,       SHOW
Route15HS:
	db ROUTE_15, ROUTE15_TM_RAGE, SHOW
Route16HS:
	db ROUTE_16, ROUTE16_SNORLAX, SHOW
Route22HS:
	db ROUTE_22, ROUTE22_RIVAL1, HIDE
	db ROUTE_22, ROUTE22_RIVAL2, HIDE
Route24HS:
	db ROUTE_24, ROUTE24_COOLTRAINER_M1,  SHOW
	db ROUTE_24, ROUTE24_TM_THUNDER_WAVE, SHOW
Route25HS:
	db ROUTE_25, ROUTE25_TM_SEISMIC_TOSS, SHOW
BluesHouseHS:
	db BLUES_HOUSE, BLUESHOUSE_DAISY1,   SHOW
	db BLUES_HOUSE, BLUESHOUSE_DAISY2,   HIDE
	db BLUES_HOUSE, BLUESHOUSE_TOWN_MAP, SHOW
OaksLabHS:
	db OAKS_LAB, OAKSLAB_RIVAL,                SHOW
	db OAKS_LAB, OAKSLAB_CHARMANDER_POKE_BALL, SHOW
	db OAKS_LAB, OAKSLAB_SQUIRTLE_POKE_BALL,   SHOW
	db OAKS_LAB, OAKSLAB_BULBASAUR_POKE_BALL,  SHOW
	db OAKS_LAB, OAKSLAB_OAK1,                 HIDE
	db OAKS_LAB, OAKSLAB_POKEDEX1,             SHOW
	db OAKS_LAB, OAKSLAB_POKEDEX2,             SHOW
	db OAKS_LAB, OAKSLAB_OAK2,                 HIDE
ViridianGymHS:
	db VIRIDIAN_GYM, VIRIDIANGYM_GIOVANNI, SHOW
	db VIRIDIAN_GYM, VIRIDIANGYM_REVIVE,   SHOW
Museum1FHS:
	db MUSEUM_1F, MUSEUM1F_OLD_AMBER, SHOW
CeruleanTradeHouseHS:
	db CERULEAN_TRADE_HOUSE, CERULEANTRADEHOUSE_BULBASAUR, SHOW
CeruleanCaveHS:
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_FULL_RESTORE, SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_MAX_ELIXER,   SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_NUGGET,       SHOW
PokemonTower2FHS:
	db POKEMON_TOWER_2F, POKEMONTOWER2F_RIVAL, SHOW
PokemonTower3FHS:
	db POKEMON_TOWER_3F, POKEMONTOWER3F_ESCAPE_ROPE, SHOW
PokemonTower4FHS:
	db POKEMON_TOWER_4F, POKEMONTOWER4F_ELIXER,    SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_AWAKENING, SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_HP_UP,     SHOW
PokemonTower5FHS:
	db POKEMON_TOWER_5F, POKEMONTOWER5F_NUGGET, SHOW
PokemonTower6FHS:
	db POKEMON_TOWER_6F, POKEMONTOWER6F_RARE_CANDY, SHOW
	db POKEMON_TOWER_6F, POKEMONTOWER6F_X_ACCURACY, SHOW
PokemonTower7FHS:
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET1, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET2, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET3, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_MR_FUJI, SHOW
MrFujisHouseHS:
	db MR_FUJIS_HOUSE, MRFUJISHOUSE_MR_FUJI, HIDE
CeladonMansionRoofHouseHS:
	db CELADON_MANSION_ROOF_HOUSE, CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL, SHOW
GameCornerHS:
	db GAME_CORNER, GAMECORNER_ROCKET, SHOW
WardensHouseHS:
	db WARDENS_HOUSE, WARDENSHOUSE_RARE_CANDY, SHOW
PokemonMansion1FHS:
	db POKEMON_MANSION_1F, POKEMONMANSION1F_ESCAPE_ROPE, SHOW
	db POKEMON_MANSION_1F, POKEMONMANSION1F_CARBOS,      SHOW
IndigoPlateauLobbyHS:
	db INDIGO_PLATEAU_LOBBY, INDIGOPLATEAULOBBY_POST_GAME_CLERK, HIDE
FightingDojoHS:
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONLEE_POKE_BALL,  SHOW
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONCHAN_POKE_BALL, SHOW
SilphCo1FHS:
	db SILPH_CO_1F, SILPHCO1F_LINK_RECEPTIONIST, HIDE
PowerPlantHS:
	db POWER_PLANT, POWERPLANT_VOLTORB1,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB2,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB3,   SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE1, SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB4,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB5,   SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE2, SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB6,   SHOW
	db POWER_PLANT, POWERPLANT_ZAPDOS,     SHOW
	db POWER_PLANT, POWERPLANT_CARBOS,     SHOW
	db POWER_PLANT, POWERPLANT_HP_UP,      SHOW
	db POWER_PLANT, POWERPLANT_RARE_CANDY, SHOW
	db POWER_PLANT, POWERPLANT_TM_THUNDER, SHOW
	db POWER_PLANT, POWERPLANT_TM_REFLECT, SHOW
VictoryRoad2FHS:
	db VICTORY_ROAD_2F, VICTORYROAD2F_MOLTRES,       SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_SUBMISSION, SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_FULL_HEAL,     SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_MEGA_KICK,  SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_GUARD_SPEC,    SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_BOULDER3,      SHOW
BillsHouseHS:
	db BILLS_HOUSE, BILLSHOUSE_BILL_POKEMON, SHOW
	db BILLS_HOUSE, BILLSHOUSE_BILL1,        HIDE
	db BILLS_HOUSE, BILLSHOUSE_BILL2,        HIDE
ViridianForestHS:
	db VIRIDIAN_FOREST, VIRIDIANFOREST_ANTIDOTE,  SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POTION,    SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POKE_BALL, SHOW
MtMoon1FHS:
	db MT_MOON_1F, MTMOON1F_POTION1,      SHOW
	db MT_MOON_1F, MTMOON1F_MOON_STONE,   SHOW
	db MT_MOON_1F, MTMOON1F_RARE_CANDY,   SHOW
	db MT_MOON_1F, MTMOON1F_ESCAPE_ROPE,  SHOW
	db MT_MOON_1F, MTMOON1F_POTION2,      SHOW
	db MT_MOON_1F, MTMOON1F_TM_WATER_GUN, SHOW
MtMoonB2FHS:
	db MT_MOON_B2F, MTMOONB2F_DOME_FOSSIL,   SHOW
	db MT_MOON_B2F, MTMOONB2F_HELIX_FOSSIL,  SHOW
	db MT_MOON_B2F, MTMOONB2F_HP_UP,         SHOW
	db MT_MOON_B2F, MTMOONB2F_TM_MEGA_PUNCH, SHOW
SSAnne2FHS:
	db SS_ANNE_2F, SSANNE2F_RIVAL, HIDE
SSAnne1FRoomsHS:
	db SS_ANNE_1F_ROOMS, SSANNE1FROOMS_TM_BODY_SLAM, SHOW
SSAnne2FRoomsHS:
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_MAX_ETHER,  SHOW
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_RARE_CANDY, SHOW
SSAnneB1FRoomsHS:
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_ETHER,      SHOW
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_TM_REST,    SHOW
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_MAX_POTION, SHOW
VictoryRoad3FHS:
	db VICTORY_ROAD_3F, VICTORYROAD3F_MAX_REVIVE,   SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_TM_EXPLOSION, SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_BOULDER4,     SHOW
RocketHideoutB1FHS:
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_ESCAPE_ROPE,  SHOW
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_HYPER_POTION, SHOW
RocketHideoutB2FHS:
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_MOON_STONE,    SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_NUGGET,        SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_TM_HORN_DRILL, SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_SUPER_POTION,  SHOW
RocketHideoutB3FHS:
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_TM_DOUBLE_EDGE, SHOW
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_RARE_CANDY,     SHOW
RocketHideoutB4FHS:
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_GIOVANNI,      SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_HP_UP,         SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_TM_RAZOR_WIND, SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_IRON,          SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_SILPH_SCOPE,   HIDE
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_LIFT_KEY,      HIDE
SilphCo2FHS:
	db SILPH_CO_2F, SILPHCO2F_SILPH_WORKER_F, SHOW
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST1,     SHOW
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST2,     SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET1,        SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET2,        SHOW
SilphCo3FHS:
	db SILPH_CO_3F, SILPHCO3F_ROCKET,       SHOW
	db SILPH_CO_3F, SILPHCO3F_SCIENTIST,    SHOW
	db SILPH_CO_3F, SILPHCO3F_HYPER_POTION, SHOW
SilphCo4FHS:
	db SILPH_CO_4F, SILPHCO4F_ROCKET1,     SHOW
	db SILPH_CO_4F, SILPHCO4F_SCIENTIST,   SHOW
	db SILPH_CO_4F, SILPHCO4F_ROCKET2,     SHOW
	db SILPH_CO_4F, SILPHCO4F_FULL_HEAL,   SHOW
	db SILPH_CO_4F, SILPHCO4F_MAX_REVIVE,  SHOW
	db SILPH_CO_4F, SILPHCO4F_ESCAPE_ROPE, SHOW
SilphCo5FHS:
	db SILPH_CO_5F, SILPHCO5F_ROCKET1,      SHOW
	db SILPH_CO_5F, SILPHCO5F_SCIENTIST,    SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKER,       SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKET2,      SHOW
	db SILPH_CO_5F, SILPHCO5F_TM_TAKE_DOWN, SHOW
	db SILPH_CO_5F, SILPHCO5F_PROTEIN,      SHOW
	db SILPH_CO_5F, SILPHCO5F_CARD_KEY,     SHOW
SilphCo6FHS:
	db SILPH_CO_6F, SILPHCO6F_ROCKET1,    SHOW
	db SILPH_CO_6F, SILPHCO6F_SCIENTIST,  SHOW
	db SILPH_CO_6F, SILPHCO6F_ROCKET2,    SHOW
	db SILPH_CO_6F, SILPHCO6F_HP_UP,      SHOW
	db SILPH_CO_6F, SILPHCO6F_X_ACCURACY, SHOW
SilphCo7FHS:
	db SILPH_CO_7F, SILPHCO7F_ROCKET1,         SHOW
	db SILPH_CO_7F, SILPHCO7F_SCIENTIST,       SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET2,         SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET3,         SHOW
	db SILPH_CO_7F, SILPHCO7F_RIVAL,           SHOW
	db SILPH_CO_7F, SILPHCO7F_CALCIUM,         SHOW
	db SILPH_CO_7F, SILPHCO7F_TM_SWORDS_DANCE, SHOW
SilphCo8FHS:
	db SILPH_CO_8F, SILPHCO8F_ROCKET1,   SHOW
	db SILPH_CO_8F, SILPHCO8F_SCIENTIST, SHOW
	db SILPH_CO_8F, SILPHCO8F_ROCKET2,   SHOW
SilphCo9FHS:
	db SILPH_CO_9F, SILPHCO9F_ROCKET1,   SHOW
	db SILPH_CO_9F, SILPHCO9F_SCIENTIST, SHOW
	db SILPH_CO_9F, SILPHCO9F_ROCKET2,   SHOW
SilphCo10FHS:
	db SILPH_CO_10F, SILPHCO10F_ROCKET,         SHOW
	db SILPH_CO_10F, SILPHCO10F_SCIENTIST,      SHOW
	db SILPH_CO_10F, SILPHCO10F_SILPH_WORKER_F, SHOW
	db SILPH_CO_10F, SILPHCO10F_TM_EARTHQUAKE,  SHOW
	db SILPH_CO_10F, SILPHCO10F_RARE_CANDY,     SHOW
	db SILPH_CO_10F, SILPHCO10F_CARBOS,         SHOW
SilphCo11FHS:
	db SILPH_CO_11F, SILPHCO11F_GIOVANNI, SHOW
	db SILPH_CO_11F, SILPHCO11F_ROCKET1,  SHOW
	db SILPH_CO_11F, SILPHCO11F_ROCKET2,  SHOW
PokemonMansion2FHS:
	db POKEMON_MANSION_2F, POKEMONMANSION2F_CALCIUM, SHOW
PokemonMansion3FHS:
	db POKEMON_MANSION_3F, POKEMONMANSION3F_MAX_POTION, SHOW
	db POKEMON_MANSION_3F, POKEMONMANSION3F_IRON,       SHOW
PokemonMansionB1FHS:
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_RARE_CANDY,   SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_FULL_RESTORE, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_BLIZZARD,  SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_SOLARBEAM, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_SECRET_KEY,   SHOW
SafariZoneEastHS:
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_FULL_RESTORE, SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_MAX_RESTORE,  SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_CARBOS,       SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_TM_EGG_BOMB,  SHOW
SafariZoneNorthHS:
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_PROTEIN,       SHOW
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_TM_SKULL_BASH, SHOW
SafariZoneWestHS:
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_POTION,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_TM_DOUBLE_TEAM, SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_REVIVE,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_GOLD_TEETH,     SHOW
SafariZoneCenterHS:
	db SAFARI_ZONE_CENTER, SAFARIZONECENTER_NUGGET, SHOW
CeruleanCave2FHS:
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_PP_UP,        SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_ULTRA_BALL,   SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_FULL_RESTORE, SHOW
CeruleanCaveB1FHS:
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MEWTWO,     SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_ULTRA_BALL, SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MAX_REVIVE, SHOW
VictoryRoad1FHS:
	db VICTORY_ROAD_1F, VICTORYROAD1F_TM_SKY_ATTACK, SHOW
	db VICTORY_ROAD_1F, VICTORYROAD1F_RARE_CANDY,    SHOW
LancesRoomHS:
	db LANCES_ROOM, LANCESROOM_LANCE,   		SHOW
	db LANCES_ROOM, LANCESROOM_LANCE_REMATCH,       HIDE
ChampionsRoomHS:
	db CHAMPIONS_ROOM, CHAMPIONSROOM_OAK, HIDE
SeafoamIslands1FHS:
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER1, SHOW
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER2, SHOW
SeafoamIslandsB1FHS:
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER2, HIDE
SeafoamIslandsB2FHS:
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER2, HIDE
SeafoamIslandsB3FHS:
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER2, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER3, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER5, HIDE
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER6, HIDE
SeafoamIslandsB4FHS:
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER2, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_ARTICUNO, SHOW
LoreleisRoomHS:
	db LORELEIS_ROOM, LORELEISROOM_LORELEI,            SHOW
	db LORELEIS_ROOM, LORELEISROOM_LORELEI_REMATCH,    HIDE
BrunosRoomHS:
	db BRUNOS_ROOM, BRUNOSROOM_BRUNO,   		SHOW
	db BRUNOS_ROOM, BRUNOSROOM_BRUNO_REMATCH,       HIDE
AgathasRoomHS:
	db AGATHAS_ROOM, AGATHASROOM_AGATHA,   		SHOW
	db AGATHAS_ROOM, AGATHASROOM_AGATHA_REMATCH,   	HIDE	
	db $FF, $01, SHOW ; end
	assert_table_length NUM_HS_OBJECTS + 1
