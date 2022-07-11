execute if entity @s[scores={recast_count=1}] if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if entity @s[scores={recast_count=1}] if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

execute if entity @s[scores={recast_count=2..}] run scoreboard players set @s cooldown 1

tag @s remove leaping

function cartographer_mob_abilities:ability_traits/cooldown_traits

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
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] if score @s recast_count matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

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
execute if entity @s[scores={recast_count=0}] run scoreboard players remove $tokened_total ca.tokens 1
execute if entity @s[scores={recast_count=0}] run tag @s remove attacking
execute if entity @s[scores={recast_count=0}] run tag @s remove tokened
execute if entity @s[scores={recast_count=0}] run tag @s remove can_see_player
execute if entity @s[scores={recast_count=0}] run tag @s add recasting

execute if entity @s[scores={recast_count=1..}] run tag @s add recasting
#execute if entity @s[tag=attacking] run #say test