execute if score $global helper_diff matches ..2 if entity @s[scores={recast_count=1}] run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. if entity @s[scores={recast_count=1}] run scoreboard players set @s cooldown 6

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

execute positioned ^ ^ ^1.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0 0.4 0.2 12
execute positioned ^ ^ ^2.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.3 0 0.3 0.2 9
execute positioned ^ ^ ^3.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.2 0 0.2 0.2 6

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 3 0.5
playsound minecraft:entity.player.attack.crit hostile @a[distance=..12] ~ ~ ~ 3 0.5

function cartographer_mob_abilities:abilities/sweep/calc_damage

execute positioned ^ ^0.3 ^1.5 as @a[distance=..1.6,tag=!swept] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute positioned ^ ^0.3 ^1.5 as @a[distance=..1.6,tag=!swept] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310208
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run tag @s remove no_cdl_msg
execute positioned ^ ^0.3 ^1.5 as @a[distance=..1.6,tag=!swept] at @s run function cd:lib/player/damage/normal
execute positioned ^ ^0.3 ^1.5 as @a[distance=..1.6,tag=!swept] at @s run tag @s add swept

execute positioned ^ ^0.3 ^2.5 as @a[distance=..1.4,tag=!swept] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute positioned ^ ^0.3 ^2.5 as @a[distance=..1.4,tag=!swept] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310208
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run tag @s remove no_cdl_msg
execute positioned ^ ^0.3 ^2.5 as @a[distance=..1.4,tag=!swept] at @s run function cd:lib/player/damage/normal
execute positioned ^ ^0.3 ^2.5 as @a[distance=..1.4,tag=!swept] at @s run tag @s add swept

execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310208
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run tag @s remove no_cdl_msg
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run function cd:lib/player/damage/normal
execute positioned ^ ^0.3 ^3.5 as @a[distance=..1.2,tag=!swept] at @s run tag @s add swept

execute as @a[gamemode=!spectator,gamemode=!creative,tag=swept] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..6] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..6] if score @s recast_count matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

execute as @a[distance=..5,tag=swept] run tag @s remove swept

data modify entity @s NoAI set value 0

scoreboard players set @s mob_atk_dis 12

scoreboard players remove @s[scores={recast_count=1..}] recast_count 1

execute if entity @s[scores={recast_count=0},tag=!mobile,tag=!unstoppable] run tp @s ^ ^0.5 ^1.5
execute if entity @s[scores={recast_count=1..},tag=!mobile,tag=!unstoppable] run tp @s ^ ^0.1 ^2 facing entity @p feet

execute if entity @s[scores={recast_count=0},tag=ca.mobile,tag=!unstoppable] run tp @s ^ ^0.5 ^2
execute if entity @s[scores={recast_count=1..},tag=ca.mobile,tag=!unstoppable] run tp @s ^ ^0.1 ^3 facing entity @p feet

execute if entity @s[scores={recast_count=0},tag=ca.unstoppable,tag=!mobile] run tp @s ^ ^0.5 ^1.5
execute if entity @s[scores={recast_count=1..},tag=ca.unstoppable,tag=!mobile] run tp @s ^ ^0.1 ^2

execute if entity @s[scores={recast_count=0},tag=ca.unstoppable,tag=ca.mobile] run tp @s ^ ^0.5 ^2
execute if entity @s[scores={recast_count=1..},tag=ca.unstoppable,tag=ca.mobile] run tp @s ^ ^0.1 ^3

#Recast if there are still casts to make.
execute if entity @s[scores={recast_count=1..}] run tag @a[distance=..5] remove swept
execute if entity @s[scores={recast_count=1..}] run function cartographer_mob_abilities:charge/sweep

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
execute if entity @s[scores={recast_count=0}] run scoreboard players remove $tokened_total ca.tokens 1
execute if entity @s[scores={recast_count=0}] run tag @s remove attacking
execute if entity @s[scores={recast_count=0}] run tag @s remove tokened
execute if entity @s[scores={recast_count=0}] run tag @s remove can_see_player

#say test