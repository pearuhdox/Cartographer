execute if score @s ca.effect_charmed matches 1.. run tag @s add ca.was_charmed

execute if score @s ca.effect_charmed matches 1.. run particle minecraft:cherry_leaves ~ ~1 ~ 0.2 0.35 0.2 0 1 normal
execute if score @s ca.effect_charmed matches 1.. anchored eyes positioned ^ ^ ^ run particle minecraft:dust_color_transition 1 0.635 0.847 4 1 1 1 ~ ~ ~ 0 0 0 0 1 force

execute if score @s ca.effect_charmed matches 21.. run effect give @s speed 1 1

execute if score @s ca.effect_charmed matches 1 run function cartographer_custom_statuses:tick_effects/charmed/reset

scoreboard players remove @s ca.effect_charmed 1