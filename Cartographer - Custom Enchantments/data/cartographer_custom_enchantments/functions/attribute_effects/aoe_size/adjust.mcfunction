scoreboard players set $scalar ca.attr_aoe_size 100
scoreboard players operation $scalar ca.attr_aoe_size += @s ca.attr_aoe_size

scoreboard players operation $size ca.attr_aoe_size *= $scalar ca.attr_aoe_size
scoreboard players operation $size ca.attr_aoe_size /= $100 ca.CONSTANT

scoreboard players operation $size_half ca.attr_aoe_size = $size ca.attr_aoe_size
scoreboard players operation $size_half ca.attr_aoe_size /= $2 ca.CONSTANT

scoreboard players operation $size_d ca.attr_aoe_size = $size ca.attr_aoe_size
scoreboard players add $size_d ca.attr_aoe_size 10


execute store result storage cartographer:macro.custom_enchantments size double 0.1 run scoreboard players get $size ca.attr_aoe_size
execute store result storage cartographer:macro.custom_enchantments size_half double 0.1 run scoreboard players get $size_half ca.attr_aoe_size
execute store result storage cartographer:macro.custom_enchantments size_d double 0.1 run scoreboard players get $size_d ca.attr_aoe_size
execute store result storage cartographer:macro.custom_enchantments size_half_d double 0.05 run scoreboard players get $size_d ca.attr_aoe_size