execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 12

function cartographer_mob_abilities:abilities/nova/calc_damage

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310203
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run tag @s remove no_cdl_msg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run function cd:lib/player/damage/normal

#execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run setblock ~ ~ ~ minecraft:fire keep

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

playsound minecraft:block.end_portal.spawn player @a[distance=..16] ~ ~ ~ 0.5 1.75

particle minecraft:witch ~ ~ ~ 2.5 0.2 2.5 0.1 150 normal @a

particle minecraft:landing_obsidian_tear ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a


particle minecraft:witch ~8 ~0.5 ~ 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~7 ~0.5 ~1 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~7 ~0.5 ~2 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~6 ~0.5 ~3 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~6 ~0.5 ~4 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~5 ~0.5 ~5 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~4 ~0.5 ~6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~3 ~0.5 ~6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~2 ~0.5 ~7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~1 ~0.5 ~7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~ ~0.5 ~8 0.3 0 0.3 0 4 normal @a

particle minecraft:witch ~-8 ~0.5 ~ 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-7 ~0.5 ~1 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-7 ~0.5 ~2 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-6 ~0.5 ~3 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-6 ~0.5 ~4 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-5 ~0.5 ~5 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-4 ~0.5 ~6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-3 ~0.5 ~6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-2 ~0.5 ~7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-1 ~0.5 ~7 0.3 0 0.3 0 4 normal @a

particle minecraft:witch ~-7 ~0.5 ~-1 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-7 ~0.5 ~-2 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-6 ~0.5 ~-3 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-6 ~0.5 ~-4 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-5 ~0.5 ~-5 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-4 ~0.5 ~-6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-3 ~0.5 ~-6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-2 ~0.5 ~-7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~-1 ~0.5 ~-7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~ ~0.5 ~-8 0.3 0 0.3 0 4 normal @a

particle minecraft:witch ~7 ~0.5 ~-1 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~7 ~0.5 ~-2 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~6 ~0.5 ~-3 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~6 ~0.5 ~-4 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~5 ~0.5 ~-5 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~4 ~0.5 ~-6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~3 ~0.5 ~-6 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~2 ~0.5 ~-7 0.3 0 0.3 0 4 normal @a
particle minecraft:witch ~1 ~0.5 ~-7 0.3 0 0.3 0 4 normal @a


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test