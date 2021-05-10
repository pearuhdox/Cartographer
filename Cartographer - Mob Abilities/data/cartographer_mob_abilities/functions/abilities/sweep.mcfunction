execute if score $global helper_diff matches ..2 if entity @s[scores={recast_count=1}] run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. if entity @s[scores={recast_count=1}] run scoreboard players set @s cooldown 6

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^ ^ ^1.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0 0.4 0.2 12
execute as @s at @s positioned ^ ^ ^2.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.3 0 0.3 0.2 9
execute as @s at @s positioned ^ ^ ^3.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.2 0 0.2 0.2 6

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 3 0.5
playsound minecraft:entity.player.attack.crit hostile @a[distance=..12] ~ ~ ~ 3 0.5

execute as @s at @s positioned ^ ^0.3 ^1.5 run execute as @a[distance=..1.6,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^ ^0.3 ^1.5 run execute as @a[distance=..1.6,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^0.3 ^1.5 run execute as @a[distance=..1.6,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^ ^0.3 ^2.5 run execute as @a[distance=..1.4,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^ ^0.3 ^2.5 run execute as @a[distance=..1.4,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^0.3 ^2.5 run execute as @a[distance=..1.4,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^ ^0.3 ^3.5 run execute as @a[distance=..1.2,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^ ^0.3 ^3.5 run execute as @a[distance=..1.2,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^0.3 ^3.5 run execute as @a[distance=..1.2,tag=!swept] at @s run tag @s add swept

data modify entity @s NoAI set value 0

scoreboard players set @s mob_atk_dis 12

scoreboard players remove @s[scores={recast_count=1..}] recast_count 1

execute if entity @s[scores={recast_count=0},tag=!mobile,tag=!unstoppable] run tp @s ^ ^0.5 ^1.5
execute if entity @s[scores={recast_count=1..},tag=!mobile,tag=!unstoppable] run tp @s ^ ^0.1 ^2 facing entity @p feet

execute if entity @s[scores={recast_count=0},tag=mobile,tag=!unstoppable] run tp @s ^ ^0.5 ^2
execute if entity @s[scores={recast_count=1..},tag=mobile,tag=!unstoppable] run tp @s ^ ^0.1 ^3 facing entity @p feet

execute if entity @s[scores={recast_count=0},tag=unstoppable,tag=!mobile] run tp @s ^ ^0.5 ^1.5
execute if entity @s[scores={recast_count=1..},tag=unstoppable,tag=!mobile] run tp @s ^ ^0.1 ^2

execute if entity @s[scores={recast_count=0},tag=unstoppable,tag=mobile] run tp @s ^ ^0.5 ^2
execute if entity @s[scores={recast_count=1..},tag=unstoppable,tag=mobile] run tp @s ^ ^0.1 ^3

#Recast if there are still casts to make.
execute if entity @s[scores={recast_count=1..}] run tag @a[distance=..5] remove swept
execute if entity @s[scores={recast_count=1..}] run function cartographer_mob_abilities:charge/sweep

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
execute if entity @s[scores={recast_count=0}] run function cartographer_mob_abilities:helper/token/return
execute if entity @s[scores={recast_count=0}] run tag @s remove attacking
execute if entity @s[scores={recast_count=0}] run tag @s remove tokened
execute if entity @s[scores={recast_count=0}] run tag @s remove can_see_player

execute if entity @s[scores={recast_count=0}] run schedule function cartographer_mob_abilities:helper/attacked_reset 20t