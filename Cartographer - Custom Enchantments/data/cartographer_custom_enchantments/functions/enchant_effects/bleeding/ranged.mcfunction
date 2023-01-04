scoreboard players add @s ca.effect_bleed 0

scoreboard players add @s[tag=is_bleeding_1,scores={ca.effect_bleed=1..}] ca.effect_bleed 1
scoreboard players add @s[tag=is_bleeding_2,scores={ca.effect_bleed=1..}] ca.effect_bleed 1
scoreboard players add @s[tag=is_bleeding_3,scores={ca.effect_bleed=1..}] ca.effect_bleed 1

scoreboard players set @s[tag=is_bleeding_1,scores={ca.effect_bleed=0}] ca.effect_bleed 3
scoreboard players set @s[tag=is_bleeding_2,scores={ca.effect_bleed=0}] ca.effect_bleed 3
scoreboard players set @s[tag=is_bleeding_3,scores={ca.effect_bleed=0}] ca.effect_bleed 3

execute if score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_1] ca.bleed_potency 1
execute if score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_2] ca.bleed_potency 1
execute if score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_3] ca.bleed_potency 1

execute unless score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_1] ca.bleed_potency 1
execute unless score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_2] ca.bleed_potency 2
execute unless score @s ca.bleed_potency matches 1.. run scoreboard players add @s[tag=is_bleeding_3] ca.bleed_potency 3

tag @e[type=#bb:hostile,tag=is_bleeding_1,distance=..12] remove is_bleeding_1
tag @e[type=#bb:hostile,tag=is_bleeding_2,distance=..12] remove is_bleeding_2
tag @e[type=#bb:hostile,tag=is_bleeding_3,distance=..12] remove is_bleeding_3

function #minecraft:cartographer/events/enchants_mob_hit/melee/bleeding
