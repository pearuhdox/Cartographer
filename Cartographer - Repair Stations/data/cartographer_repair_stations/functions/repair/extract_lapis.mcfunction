clear @s minecraft:lapis_lazuli 1
scoreboard players remove @s LapisCost 1

execute if entity @s[scores={LapisCost=1..}] run function cartographer_repair_stations:repair/extract_lapis