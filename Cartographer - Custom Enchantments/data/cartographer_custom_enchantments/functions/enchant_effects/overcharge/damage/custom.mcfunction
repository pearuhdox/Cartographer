scoreboard players set $overcharge ca.attr_ranged 5
scoreboard players operation $overcharge ca.attr_ranged *= $tier ca.overcharge
scoreboard players operation $overcharge ca.attr_ranged *= $lvl ca.overcharge

scoreboard players operation @s ca.attr_ranged += $overcharge ca.attr_ranged