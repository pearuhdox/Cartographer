scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits


tag @s remove leaping

scoreboard players set @s ability_charge 0

execute positioned ~ ~ ~ run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

function cartographer_mob_abilities:abilities/smash/calc_damage

execute as @a[distance=..4.5] at @s unless block ~ ~-0.3 ~ air run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..4.5] at @s unless block ~ ~-0.3 ~ air unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310206
execute as @a[distance=..4.5] at @s unless block ~ ~-0.3 ~ air run tag @s remove no_cdl_msg
execute as @a[distance=..4.5] at @s unless block ~ ~-0.3 ~ air run function cd:lib/player/damage/normal

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..4.5] at @s unless block ~ ~-0.3 ~ air run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] if score @s recast_count matches 1 run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

data merge entity @s {Motion:[0.0,0.5,0.0]}

data modify entity @s ActiveEffects append value {Id:28b,Duration:10,Amplifier:0b}

tag @s remove airborne
tag @s remove airborne_2
tag @s remove airborne_3
tag @s remove airborne_4
tag @s remove airborne_5
tag @s remove airborne_6
tag @s remove airborne_7
tag @s remove airborne_8
tag @s remove airborne_9
tag @s remove airborne_10

scoreboard players remove @s[scores={recast_count=1..}] recast_count 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate