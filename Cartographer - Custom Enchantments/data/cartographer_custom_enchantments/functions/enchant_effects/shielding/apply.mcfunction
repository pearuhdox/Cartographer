execute store result score $shield_check ca.shielding run data get entity @s AbsorptionAmount
scoreboard players add $shield_check ca.shielding 1

execute store result score $shield_total ca.shielding run attribute @s minecraft:generic.max_health get
scoreboard players operation $shield_total ca.shielding *= @s ca.shielding
scoreboard players operation $shield_total ca.shielding *= $10 ca.CONSTANT
scoreboard players operation $shield_total ca.shielding /= $100 ca.CONSTANT

scoreboard players operation $cap ca.abs_handler = $shield_total ca.shielding

scoreboard players set $amount ca.abs_handler 1
execute unless entity @s[tag=ca.shielding_first] run scoreboard players set $duration ca.abs_handler 32767
function cartographer_core:helper/abs_handler/add

scoreboard players set @s ca.shielding_time 0

execute if score $shield_check ca.shielding >= $shield_total ca.shielding run tag @s add ca.shielding_full

tag @s add ca.shielding_first

function #minecraft:cartographer/events/enchantments/passive/shielding