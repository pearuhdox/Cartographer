effect give @s[tag=is_exposing_1] bad_omen 4 0
effect give @s[tag=is_exposing_2] bad_omen 4 1
effect give @s[tag=is_exposing_3] bad_omen 4 2

tag @s[type=#bb:hostile,tag=is_exposing_1] remove is_exposing_1
tag @s[type=#bb:hostile,tag=is_exposing_2] remove is_exposing_2
tag @s[type=#bb:hostile,tag=is_exposing_3] remove is_exposing_3

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/exposing