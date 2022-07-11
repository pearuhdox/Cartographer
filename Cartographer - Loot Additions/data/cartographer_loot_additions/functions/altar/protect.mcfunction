data modify entity @s Invulnerable set value 0b

scoreboard players set $altar_protect altar_lock 0

execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_loot_additions:altar/protect_branch

execute if score $altar_protect altar_lock matches 0 as @s at @s run tp @e[type=armor_stand,tag=altar_core,limit=1,sort=nearest] ~ ~-1.25 ~
execute if score $altar_protect altar_lock matches 1.. run data modify entity @s Invulnerable set value 1b
execute if score $altar_protect altar_lock matches 1.. as @s at @s run tp @e[type=armor_stand,tag=altar_core,limit=1,sort=nearest] ~ ~-0.75 ~
