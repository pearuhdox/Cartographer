execute store result score $x ca.attr_ranged_speed run data get entity @s Motion[0] 100
execute store result score $y ca.attr_ranged_speed run data get entity @s Motion[1] 100
execute store result score $z ca.attr_ranged_speed run data get entity @s Motion[2] 100


scoreboard players operation $x ca.attr_ranged_speed *= $val ca.attr_ranged_speed
scoreboard players operation $y ca.attr_ranged_speed *= $val ca.attr_ranged_speed
scoreboard players operation $z ca.attr_ranged_speed *= $val ca.attr_ranged_speed

scoreboard players operation $x ca.attr_ranged_speed /= $100 ca.CONSTANT
scoreboard players operation $y ca.attr_ranged_speed /= $100 ca.CONSTANT
scoreboard players operation $z ca.attr_ranged_speed /= $100 ca.CONSTANT


execute store result entity @s Motion[0] double 0.01 run scoreboard players get $x ca.attr_ranged_speed
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y ca.attr_ranged_speed
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $z ca.attr_ranged_speed