scoreboard players set @s[tag=is_electrocute_1] ca.effect_shock 3
scoreboard players set @s[tag=is_electrocute_2] ca.effect_shock 5
scoreboard players set @s[tag=is_electrocute_3] ca.effect_shock 7

tag @s[type=#bb:hostile,tag=is_electrocute_1] remove is_electrocute_1
tag @s[type=#bb:hostile,tag=is_electrocute_2] remove is_electrocute_2
tag @s[type=#bb:hostile,tag=is_electrocute_3] remove is_electrocute_3

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/electrocute