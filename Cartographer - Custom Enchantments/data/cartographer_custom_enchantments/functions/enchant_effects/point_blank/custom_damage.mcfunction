scoreboard players set $point_blank ca.attr_ranged 20
scoreboard players operation $point_blank ca.attr_ranged *= $point_blank ca.var

scoreboard players operation $ranged_damage ca.var += $point_blank ca.attr_ranged