scoreboard players add @s[tag=is_bleeding_1] ca.effect_bleed 2
scoreboard players add @s[tag=is_bleeding_2] ca.effect_bleed 3
scoreboard players add @s[tag=is_bleeding_3] ca.effect_bleed 4

tag @e[type=#bb:hostile,tag=is_bleeding_1,distance=..12] remove is_bleeding_1
tag @e[type=#bb:hostile,tag=is_bleeding_2,distance=..12] remove is_bleeding_2
tag @e[type=#bb:hostile,tag=is_bleeding_3,distance=..12] remove is_bleeding_3

function #minecraft:cartographer/events/enchants_mob_hit/melee/bleeding
