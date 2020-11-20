xp add @s -1 levels
scoreboard players remove @s XPcost 1

execute if entity @s[scores={XPcost=1..}] run function cartographer_repair_stations:repair/extract_levels