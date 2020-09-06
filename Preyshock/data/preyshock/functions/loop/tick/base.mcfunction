#Check if a container has been opened for mimic tests.

execute if entity @a[scores={open_chest=1..}] run execute as @e[scores={open_chest=1..}] at @s run execute as @e[tag=hidden_mimic,distance=..5,limit=1,sort=nearest] at @s run function preyshock:mimic/transform
execute if entity @a[scores={open_barrel=1..}] run execute as @e[scores={open_barrel=1..}] at @s run execute as @e[tag=hidden_mimic,distance=..5,limit=1,sort=nearest] at @s run function preyshock:mimic/transform
execute if entity @a[scores={open_echest=1..}] run execute as @e[scores={open_echest=1..}] at @s run execute as @e[tag=hidden_mimic,distance=..5,limit=1,sort=nearest] at @s run function preyshock:mimic/transform

scoreboard players set @a open_chest 0
scoreboard players set @a open_barrel 0
scoreboard players set @a open_echest 0

schedule function preyshock:loop/tick/base 1t