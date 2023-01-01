scoreboard players set @s[tag=is_infection_1] ca.effect_infect 3
scoreboard players set @s[tag=is_infection_2] ca.effect_infect 5
scoreboard players set @s[tag=is_infection_3] ca.effect_infect 7

tag @s[type=#bb:hostile,tag=is_infection_1] remove is_infection_1
tag @s[type=#bb:hostile,tag=is_infection_2] remove is_infection_2
tag @s[type=#bb:hostile,tag=is_infection_3] remove is_infection_3

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/infection