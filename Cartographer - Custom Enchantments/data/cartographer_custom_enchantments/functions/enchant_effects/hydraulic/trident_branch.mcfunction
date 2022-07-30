execute unless score @s ca.loyalty matches 1.. run summon armor_stand ^ ^ ^2 {NoGravity:1,Tags:["hydraul_stopper"],DeathLootTable:"nothing",Invisible:1}
execute unless score @s ca.loyalty matches 1.. run scoreboard players set @e[tag=hydraul_stopper,type=armor_stand,limit=1] ca.lifetime 1

execute run playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..8] ~ ~ ~ 2 0.75

execute positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.2 10
execute positioned ^ ^ ^4 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.2 10
execute positioned ^ ^ ^3 run particle minecraft:splash ~ ~0.5 ~ 1 0.7 1 1 300

execute positioned ^ ^ ^3 run function cartographer_custom_enchantments:enchant_effects/hydraulic/circle_raycast

execute positioned ^ ^ ^3 as @e[type=#bb:hostile,distance=..3] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic/enemy_branch

execute if score @s[gamemode=!creative] ca.loyalty matches 1.. run tag @s add hydraul_loyalty_interaction
execute if score @s[gamemode=!creative] ca.loyalty matches 1.. run schedule function cartographer_custom_enchantments:enchant_effects/hydraulic/loyalty_interaction 1t


function #minecraft:cartographer_events/hydraulic
