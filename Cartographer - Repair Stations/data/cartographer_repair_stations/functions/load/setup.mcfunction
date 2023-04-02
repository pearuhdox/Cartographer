#Setup all necessary helper scoreboards for the repair stations.
scoreboard objectives add ca.repair_anvil_master dummy
scoreboard objectives add ca.repair_anvil_trigger trigger
scoreboard objectives add ca.repair_anvil_place minecraft.used:minecraft.anvil
scoreboard objectives add ca.repair_anvil_use minecraft.custom:minecraft.interact_with_anvil

scoreboard objectives add ca.repair_station_state dummy
scoreboard objectives add ca.crystal_shield dummy

scoreboard objectives add XPcost dummy
scoreboard objectives add LapisCost dummy
scoreboard objectives add MaterialCost dummy
scoreboard objectives add repairConstant dummy
scoreboard objectives add repair_tampers dummy
scoreboard players set helper_repair repairConstant 2

scoreboard objectives add ca.place_repair minecraft.used:minecraft.glow_item_frame

#execute unless score $repair_start MaterialCost matches 0.. run scoreboard players set $repair_start MaterialCost 4
scoreboard players set $repair_start MaterialCost 4

scoreboard objectives add tesseract dummy

scoreboard players set $is_used tesseract -1
scoreboard players set $item_to_void tesseract -1


execute unless score $xp_maximum ca.repair_station_state matches 1.. run scoreboard players set $xp_maximum ca.repair_station_state 50
execute unless score $lapis_maximum ca.repair_station_state matches 1.. run scoreboard players set $lapis_maximum ca.repair_station_state 25

#Setup LoE data space
function cartographer_repair_stations:load/integration/active/clear

#Run loops
function cartographer_repair_stations:loop/tick/base
function cartographer_repair_stations:loop/1_second/base

# UUIDS!

# Anvil cosmetic parts
# 31182015-1851-6191-8192-000000000001
# [I;823664661,407986577,-2121138176,1]

# 31182015-1851-6191-8192-000000000002
# [I;823664661,407986577,-2121138176,2]

# 31182015-1851-6191-8192-000000000003
# [I;823664661,407986577,-2121138176,3]

# 31182015-1851-6191-8192-000000000004
# [I;823664661,407986577,-2121138176,4]

# 31182015-1851-6191-8192-000000000005
# [I;823664661,407986577,-2121138176,5]

# Interaction
# 31182015-1851-6191-8192-000000000006
# [I;823664661,407986577,-2121138176,6]

# Item Display
# 31182015-1851-6191-8192-000000000007
# [I;823664661,407986577,-2121138176,7]

# Text Display Instructions
# 31182015-1851-6191-8192-000000000008
# [I;823664661,407986577,-2121138176,8]

# Text Display Cost
# 31182015-1851-6191-8192-000000000009
# [I;823664661,407986577,-2121138176,9]

# Text Display Warnings
# 31182015-1851-6191-8192-000000000010
# [I;823664661,407986577,-2121138176,16]




# Upgrade Stack Moss
# 31182015-1851-6191-8192-100000000001
# [I;823664661,407986577,-2121134080,1]

# 31182015-1851-6191-8192-100000000002
# [I;823664661,407986577,-2121134080,2]

# 31182015-1851-6191-8192-100000000003
# [I;823664661,407986577,-2121134080,3]

# 31182015-1851-6191-8192-100000000004
# [I;823664661,407986577,-2121134080,4]


# Upgrade Stack Fireslime
# 31182015-1851-6191-8192-200000000001
# [I;823664661,407986577,-2121129984,1]

# 31182015-1851-6191-8192-200000000002
# [I;823664661,407986577,-2121129984,2]

# 31182015-1851-6191-8192-200000000003
# [I;823664661,407986577,-2121129984,3]

# 31182015-1851-6191-8192-200000000004
# [I;823664661,407986577,-2121129984,4]


# Upgrade Stack Runes
# 31182015-1851-6191-8192-300000000001
# [I;823664661,407986577,-2121125888,1]

# 31182015-1851-6191-8192-300000000002
# [I;823664661,407986577,-2121125888,2]

# 31182015-1851-6191-8192-300000000004
# [I;823664661,407986577,-2121125888,3]

# 31182015-1851-6191-8192-300000000004
# [I;823664661,407986577,-2121125888,4]

# Upgrade Stack Amethyst
# 31182015-1851-6191-8192-400000000001
# [I;823664661,407986577,-2121121792,1]

# 31182015-1851-6191-8192-400000000002
# [I;823664661,407986577,-2121121792,2]

# 31182015-1851-6191-8192-400000000004
# [I;823664661,407986577,-2121121792,3]

# 31182015-1851-6191-8192-400000000004
# [I;823664661,407986577,-2121121792,4]


# Tesseract Item Display
# 31182015-2051-9195-1813-000000000001
# [I;823664661,542216597,403898368,1]

# Tesseract Villager
# 31182015-2051-9195-1813-000000000002
# [I;823664661,542216597,403898368,2]