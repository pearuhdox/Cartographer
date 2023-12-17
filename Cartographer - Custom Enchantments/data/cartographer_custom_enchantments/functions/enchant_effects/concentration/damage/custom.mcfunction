scoreboard players set $concentration ca.attr_ranged 5
scoreboard players operation $concentration ca.attr_ranged *= $lvl ca.concentration
scoreboard players operation $concentration ca.attr_ranged *= $stacks ca.concentration

scoreboard players operation @s ca.attr_ranged += $concentration ca.attr_ranged