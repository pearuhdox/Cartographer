scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

effect give @s slowness 1 6 true

execute as @a[gamemode=survival,distance=..8] at @s run tag @s add frost_novad

execute as @a[gamemode=survival,distance=..8] at @s run scoreboard players set @s damage_queue 8
execute as @a[gamemode=survival,distance=..8] at @s run function cartographer_core:helper/hurt_player/by_score

execute as @a[gamemode=survival,distance=..8] at @s run effect give @s slowness 3 2

playsound minecraft:block.glass.break hostile @a[distance=..16] ~ ~ ~ 3 0.8

particle minecraft:item_snowball ~ ~ ~ 4 0.2 4 0.1 250 normal @a

particle minecraft:cloud ~ ~1 ~ 0.75 0.25 0.75 0.1 30 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t