#Setup all necessary helper scoreboards for the repair stations.

scoreboard objectives add XPcost dummy
scoreboard objectives add LapisCost dummy
scoreboard objectives add MaterialCost dummy
scoreboard objectives add repairConstant dummy
scoreboard objectives add repair_tampers dummy
scoreboard players set helper_repair repairConstant 2

#Run loops
function cartographer_repair_stations:loop/tick/base
function cartographer_repair_stations:loop/1_second/base