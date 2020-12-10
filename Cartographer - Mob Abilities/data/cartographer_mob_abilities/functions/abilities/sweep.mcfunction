scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

data merge entity @s {NoAI:0}

execute as @s at @s positioned ^3 ^ ^2 run particle minecraft:sweep_attack ~ ~1 ~ 1.5 0 1.5 0.2 10

execute as @s at @s positioned ^-3 ^ ^2 run particle minecraft:sweep_attack ~ ~1 ~ 1.5 0 1.5 0.2 30

execute as @s at @s positioned ^ ^ ^3 run particle minecraft:sweep_attack ~ ~1 ~ 1.2 0 1.2 0.2 10

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 3 0.5
playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute as @s at @s positioned ^3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run scoreboard players set @s damage_queue 8
execute as @s at @s positioned ^3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^-3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run scoreboard players set @s damage_queue 8
execute as @s at @s positioned ^-3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^-3 ^ ^2 run execute as @a[distance=..1,tag=!swept] at @s run tag @s add swept

execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=!swept] at @s run scoreboard players set @s damage_queue 8
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=!swept] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=!swept] at @s run tag @s add swept


execute as @s at @s positioned ^3 ^ ^2 run execute if entity @a[distance=..1] as @a[distance=..1] at @s run effect give @s weakness 4 2

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run effect give @s weakness 4 2

execute as @s at @s positioned ^-3 ^ ^2 run execute if entity @a[distance=..1] as @a[distance=..1] at @s run effect give @s weakness 4 2

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t