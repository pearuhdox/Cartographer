execute store result score @s ca.x_seed run data get entity @s Pos[0] 1
execute store result score @s ca.y_seed run data get entity @s Pos[1] 1
execute store result score @s ca.z_seed run data get entity @s Pos[2] 1

execute if entity @s[scores={ca.x_seed=0}] run scoreboard players set @s ca.x_seed 69420
execute if entity @s[scores={ca.y_seed=0}] run scoreboard players set @s ca.y_seed 69420
execute if entity @s[scores={ca.z_seed=0}] run scoreboard players set @s ca.z_seed 69420

scoreboard players set @s ca.derived_seed 1
scoreboard players operation @s ca.derived_seed *= @s ca.x_seed
scoreboard players operation @s ca.derived_seed *= @s ca.y_seed
scoreboard players operation @s ca.derived_seed *= @s ca.z_seed

data merge block ~ ~ ~ {LootTableSeed:0} 
execute as @s store result block ~ ~ ~ LootTableSeed int 1 run scoreboard players add @s ca.derived_seed 0