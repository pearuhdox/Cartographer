execute if entity @s[tag=is_hunter_1,type=#bb:monstrous] run scoreboard players set @s cdl.damage_queue 2
execute if entity @s[tag=is_hunter_2,type=#bb:monstrous] run scoreboard players set @s cdl.damage_queue 5
execute if entity @s[tag=is_hunter_3,type=#bb:monstrous] run scoreboard players set @s cdl.damage_queue 7
execute if entity @s[tag=is_hunter_4,type=#bb:monstrous] run scoreboard players set @s cdl.damage_queue 10
execute if entity @s[tag=is_hunter_5,type=#bb:monstrous] run scoreboard players set @s cdl.damage_queue 12

execute if entity @s[type=#bb:monstrous] run function cd:lib/mob/damage/true

execute if entity @s[tag=is_hunter_1,type=#bb:monstrous] run function cd:func/mob_damage_true/half
execute if entity @s[tag=is_hunter_3,type=#bb:monstrous] run function cd:func/mob_damage_true/half
execute if entity @s[tag=is_hunter_5,type=#bb:monstrous] run function cd:func/mob_damage_true/half

tag @s[type=#bb:hostile,tag=is_hunter_1] remove is_hunter_1
tag @s[type=#bb:hostile,tag=is_hunter_2] remove is_hunter_2
tag @s[type=#bb:hostile,tag=is_hunter_3] remove is_hunter_3
tag @s[type=#bb:hostile,tag=is_hunter_4] remove is_hunter_4
tag @s[type=#bb:hostile,tag=is_hunter_5] remove is_hunter_5

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/hunter