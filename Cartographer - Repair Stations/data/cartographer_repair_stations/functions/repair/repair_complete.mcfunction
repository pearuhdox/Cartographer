scoreboard players operation @p[distance=..5] XPcost = @s XPcost
scoreboard players operation @p[distance=..5] LapisCost = @s LapisCost
scoreboard players operation @p[distance=..5] MaterialCost = @s MaterialCost

scoreboard players operation @s LapisCost *= helper_repair repairConstant
scoreboard players operation @s XPcost *= helper_repair repairConstant

execute as @s store result entity @s HandItems[0].tag.RepairCost float 1 run scoreboard players add @s XPcost 0
execute as @s store result entity @s HandItems[0].tag.LapisCost float 1 run scoreboard players add @s LapisCost 0

execute as @s store result entity @s ArmorItems[0].tag.RepairCost float 1 run scoreboard players add @s XPcost 0
execute as @s store result entity @s ArmorItems[0].tag.LapisCost float 1 run scoreboard players add @s LapisCost 0

execute as @s store result entity @s ArmorItems[1].tag.RepairCost float 1 run scoreboard players add @s XPcost 0
execute as @s store result entity @s ArmorItems[1].tag.LapisCost float 1 run scoreboard players add @s LapisCost 0

execute as @s store result entity @s ArmorItems[2].tag.RepairCost float 1 run scoreboard players add @s XPcost 0
execute as @s store result entity @s ArmorItems[2].tag.LapisCost float 1 run scoreboard players add @s LapisCost 0

execute as @s store result entity @s ArmorItems[3].tag.RepairCost float 1 run scoreboard players add @s XPcost 0
execute as @s store result entity @s ArmorItems[3].tag.LapisCost float 1 run scoreboard players add @s LapisCost 0

data modify entity @s HandItems[0].tag.Damage set value 0
data modify entity @s ArmorItems[0].tag.Damage set value 0
data modify entity @s ArmorItems[1].tag.Damage set value 0
data modify entity @s ArmorItems[2].tag.Damage set value 0
data modify entity @s ArmorItems[3].tag.Damage set value 0

data modify entity @s HandItems[0].tag.Damage set value 0

playsound minecraft:block.anvil.use block @a[distance=..20] ~ ~ ~ 1 1 1
particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.1 15 force
particle minecraft:composter ~ ~0.2 ~ 0.3 0.3 0.3 0 40 force


execute as @p[distance=..5] run function cartographer_repair_stations:repair/extract_levels
execute as @p[distance=..5] run function cartographer_repair_stations:repair/extract_lapis
execute as @p[distance=..5] run function cartographer_repair_stations:repair/extract_material


function cartographer_repair_stations:repair/return_item