#Setup all necessary helper scoreboards for the repair stations.

scoreboard objectives add XPcost dummy
scoreboard objectives add LapisCost dummy
scoreboard objectives add MaterialCost dummy
scoreboard objectives add repairConstant dummy
scoreboard objectives add repair_tampers dummy
scoreboard players set helper_repair repairConstant 2

#execute unless score $repair_start MaterialCost matches 0.. run scoreboard players set $repair_start MaterialCost 4
scoreboard players set $repair_start MaterialCost 4

scoreboard objectives add tesseract dummy

scoreboard players set $is_used tesseract -1
scoreboard players set $item_to_void tesseract -1

#Setup LoE data space
function cartographer_repair_stations:load/integration/active/clear

#Run loops
function cartographer_repair_stations:loop/tick/base
function cartographer_repair_stations:loop/1_second/base