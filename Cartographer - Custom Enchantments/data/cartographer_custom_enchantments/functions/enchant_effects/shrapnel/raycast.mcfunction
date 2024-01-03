scoreboard players remove @s ca.raycast 1

particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=#bb:hostile,dx=0,dy=0,dz=0,tag=!ca.shrapnel_hit] positioned ~-0.5 ~-0.5 ~-0.5 as @s[type=#bb:hostile,dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchant_effects/shrapnel/entity

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast