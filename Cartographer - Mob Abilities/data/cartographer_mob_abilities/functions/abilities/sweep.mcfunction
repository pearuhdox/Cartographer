execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 6

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^1.5 ^ ^1 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0 0.4 0.2 8

execute as @s at @s positioned ^-1.5 ^ ^1 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0 0.4 0.2 8

execute as @s at @s positioned ^ ^ ^1.5 run particle minecraft:sweep_attack ~ ~1 ~ 0.8 0 0.8 0.2 16

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 3 0.5
playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute as @s at @s positioned ^1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^-1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^-1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^-1.5 ^ ^2 run execute as @a[distance=..0.5,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^ ^ ^2.5 run execute as @a[distance=..1.5,tag=!swept] at @s run scoreboard players set @s damage_queue 6
execute as @s at @s positioned ^ ^ ^2.5 run execute as @a[distance=..1.5,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^ ^2.5 run execute as @a[distance=..1.5,tag=!swept] at @s run tag @s add swept

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 20t