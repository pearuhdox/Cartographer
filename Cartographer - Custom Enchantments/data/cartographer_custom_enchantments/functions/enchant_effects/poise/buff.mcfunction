execute store result score $shield_total ca.poise run attribute @s minecraft:generic.max_health get
scoreboard players operation $cap ca.abs_handler = $shield_total ca.poise

scoreboard players operation $shield_total ca.poise *= @s ca.poise
scoreboard players operation $shield_total ca.poise *= $5 ca.CONSTANT
scoreboard players operation $shield_total ca.poise /= $100 ca.CONSTANT

scoreboard players operation $amount ca.abs_handler = $shield_total ca.poise
scoreboard players set $duration ca.abs_handler 120

function cartographer_core:helper/abs_handler/add

scoreboard players set @s ca.poise_cdl 2400

playsound minecraft:item.shield.block player @s ~ ~ ~ 0.75 1.25
particle minecraft:falling_honey ~ ~0.01 ~ 0.4 0 0.4 0 60

function #minecraft:cartographer/events/enchantments/passive/poise