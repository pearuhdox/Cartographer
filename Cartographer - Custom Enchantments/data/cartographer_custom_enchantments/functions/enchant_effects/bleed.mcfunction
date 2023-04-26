execute as @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 1

execute as @s unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 4


tag @s[type=#bb:hostile,tag=is_bleed] remove is_bleed

function #minecraft:cartographer/events/enchants_mob_hit/ranged/bleed