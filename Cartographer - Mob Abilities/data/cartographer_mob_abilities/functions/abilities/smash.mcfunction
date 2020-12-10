scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^ ^ ^5 run particle minecraft:cloud ~ ~0.2 ~ 1.5 0 1.5 0.2 50

execute as @s at @s positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.2 ~ 1.2 0 1.2 0.2 30

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute as @s at @s positioned ^ ^ ^5 run execute as @a[distance=..2] at @s run tag @s add smashed
execute as @s at @s positioned ^ ^ ^5 run execute as @a[distance=..3] at @s run scoreboard players set @s damage_queue 10
execute as @s at @s positioned ^ ^ ^5 run execute as @a[distance=..3] at @s run function cartographer_core:helper/hurt_player/by_score

execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=smashed] at @s run tag @s add smashed
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=smashed] at @s run scoreboard players set @s damage_queue 10
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2,tag=smashed] at @s run function cartographer_core:helper/hurt_player/by_score

execute as @s at @s positioned ^ ^ ^5 run execute if entity @a[distance=..3] as @a[distance=..3] at @s run effect give @s slowness 4 2

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run effect give @s slowness 4 2


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t