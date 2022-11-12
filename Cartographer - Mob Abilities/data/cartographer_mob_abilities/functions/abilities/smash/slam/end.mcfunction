scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits


tag @s remove leaping

scoreboard players set @s ability_charge 0

execute positioned ~ ~ ~ run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

function cartographer_mob_abilities:abilities/smash/calc_damage

execute as @a[distance=..3.5] at @s unless block ~ ~-0.3 ~ air run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..3.5] at @s unless block ~ ~-0.3 ~ air unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310206
execute as @a[distance=..3.5] at @s unless block ~ ~-0.3 ~ air run tag @s remove no_cdl_msg
execute as @a[distance=..3.5] at @s unless block ~ ~-0.3 ~ air run function cd:lib/player/damage/normal

data merge entity @s {Motion:[0.0,0.35,0.0]}

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5] at @s unless block ~ ~-0.3 ~ air run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged


tag @s remove ca.airborne_slam_waiting



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate