particle minecraft:sculk_soul ~ ~-0.5 ~ 0.2 0.3 0.2 0.03 1 normal

execute unless data entity @s Item run function cartographer_charon:death_drop/remove

execute unless block ~ ~ ~ air unless block ~ ~ ~ water run data modify entity @s Fixed set value 1b
execute if block ~ ~ ~ air run data modify entity @s Fixed set value 0b
execute if block ~ ~ ~ water run data modify entity @s Fixed set value 0b

execute unless entity @a[distance=..5] unless score @s dt.respawn matches 4.. run data modify entity @s Fixed set value 1b
execute if entity @a[distance=..5] if score @s dt.respawn matches 5.. run data modify entity @s Fixed set value 0b