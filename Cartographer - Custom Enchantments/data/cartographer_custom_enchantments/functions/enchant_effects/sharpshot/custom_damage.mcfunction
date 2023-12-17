scoreboard players set $sharpshot ca.attr_ranged 20
scoreboard players operation $sharpshot ca.attr_ranged *= $sharpshot ca.var

scoreboard players operation $ranged_damage ca.var += $sharpshot ca.attr_ranged