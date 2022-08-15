#Tell Cartographer this pack is in use
scoreboard players set $repair_stations ca.installed 1

#Set default repair station amounts
execute unless score $repair_max XPcost matches 0.. run scoreboard players set $repair_max XPcost 50
execute unless score $repair_max LapisCost matches 0.. run scoreboard players set $repair_max LapisCost 25

execute unless score $repair_start XPcost matches 0.. run scoreboard players set $repair_start XPcost 8
execute unless score $repair_start LapisCost matches 0.. run scoreboard players set $repair_start LapisCost 4

# Master Repair Frame Sign
execute as 31182015-1851-6191-8131-192058000000 at @s run function cartographer_repair_stations:loop/tick/master

# Repair Input Frame Sign
execute as 31182015-1851-6191-8914-162120000000 at @s run function cartographer_repair_stations:loop/tick/repair_input_branch

# Repair Display Stand
execute as 31182015-1851-6191-0000-914162120 at @s run function cartographer_repair_stations:loop/tick/armor_stand_display

# Repair Sheeps
execute as 31182015-1851-6191-0000-19213351919 at @s run function cartographer_repair_stations:loop/tick/sheep_branch_repair
execute as 31182015-1851-6191-0000-31143512 at @s run function cartographer_repair_stations:loop/tick/sheep_branch_return

# Tesseract Ticking
execute as 31182015-1851-6191-0000-221594217 at @s if entity @a[distance=..7] run function cartographer_repair_stations:void_bag/tick

execute unless score $no_tesseract ca.gamerule matches 1.. as @a[tag=check_to_tesseract] at @s run function cartographer_repair_stations:void_bag/move_to_tesseract
execute if score $no_tesseract ca.gamerule matches 1.. run scoreboard players set @a tesseract 0


# Master Frame for position
# 31182015-1851-6191-8131-192058000000
# [I;823664661,407986577,-2127488736,1476395008]

# Input Frame
# 31182015-1851-6191-8914-162120000000
# [I;823664661,407986577,-1995172319,536870912]

# Display Armor Stand
# 31182015-1851-6191-0000-914162120
# [I;823664661,407986577,9,336994592]

# Success Sheep
# 31182015-1851-6191-0000-19213351919
# [I;823664661,407986577,402,322246937]

# Fail Sheep
# 31182015-1851-6191-0000-31143512
# [I;823664661,407986577,0,823407890]

# Villager Void Bag
# 31182015-1851-6191-0000-221594217
# [I;823664661,407986577,2,559497751]

# Line 1
# 31182015-1851-6191-0000-1291451
# [I;823664661,407986577,0,19469393]

# Line 2
# 31182015-1851-6191-0000-1291452
# [I;823664661,407986577,0,19469394]

# Line 3
# 31182015-1851-6191-0000-1291453
# [I;823664661,407986577,0,19469395]

# Line 4
# 31182015-1851-6191-0000-1291454
# [I;823664661,407986577,0,19469396]

# Line 5
# 31182015-1851-6191-0000-1291455
# [I;823664661,407986577,0,19469397]