execute unless score @s ca.lifetime matches 20.. unless score @s ca.mob_var matches 20.. anchored eyes facing entity @p eyes positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.15 ~ ~

execute anchored eyes facing entity @p eyes positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.075 ~ ~
execute unless score @s ca.mob_var matches 1.. anchored eyes facing entity @p eyes positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.075 ~ ~

scoreboard players operation $shade_mod ca.mob_var = @s ca.lifetime
scoreboard players operation $shade_mod ca.mob_var %= $20 ca.CONSTANT

execute if score $shade_mod ca.mob_var matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute unless score @s ca.mob_var matches 1.. if entity @a[distance=..2] run function cartographer_mob_abilities:abilities/haunt/shade/attack

particle minecraft:smoke ~ ~0.5 ~ 0.35 0.35 0.35 0.1 2 normal
particle minecraft:squid_ink ~ ~0.85 ~ 0.75 0.15 0.75 0 2 normal

execute if score @s ca.lifetime matches 200.. run function cartographer_mob_abilities:abilities/haunt/shade/kill

execute if score @s ca.mob_var matches 1.. run scoreboard players remove @s ca.mob_var 1

scoreboard players add @s ca.lifetime 1