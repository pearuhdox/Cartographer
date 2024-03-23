execute store result score $shield_total ca.stalwart run attribute @s minecraft:generic.max_health get
scoreboard players operation $cap ca.abs_handler = $shield_total ca.stalwart

scoreboard players operation $shield_total ca.stalwart *= @s ca.stalwart
scoreboard players operation $shield_total ca.stalwart *= $5 ca.CONSTANT
scoreboard players operation $shield_total ca.stalwart /= $100 ca.CONSTANT

scoreboard players operation $amount ca.abs_handler = $shield_total ca.stalwart
scoreboard players set $duration ca.abs_handler 120

function cartographer_core:helper/abs_handler/add

scoreboard players set @s ca.stalwart_cdl 2400

playsound minecraft:item.shield.block player @s ~ ~ ~ 0.75 1.25
particle minecraft:falling_honey ~ ~0.05 ~ 0.4 0 0.4 0 60

function #minecraft:cartographer/events/enchantments/passive/stalwart