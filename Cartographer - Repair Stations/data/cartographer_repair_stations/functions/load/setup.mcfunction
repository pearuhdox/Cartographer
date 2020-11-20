#Setup all necessary helper scoreboards for the randomize function

scoreboard objectives add XPcost dummy
scoreboard objectives add LapisCost dummy
scoreboard objectives add MaterialCost dummy
scoreboard objectives add repairConstant dummy
scoreboard players set helper_repair repairConstant 2

#Schedule the loading message.

tag @a add repair_stations

#Run loops
function cartographer_repair_stations:loop/tick/base
function cartographer_repair_stations:loop/1_second/base