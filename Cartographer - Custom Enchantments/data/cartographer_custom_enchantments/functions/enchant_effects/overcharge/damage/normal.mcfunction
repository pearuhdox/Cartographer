scoreboard players set $overcharge ca.arrow_dmg 125
scoreboard players operation $overcharge ca.arrow_dmg *= $tier ca.overcharge
scoreboard players operation $overcharge ca.arrow_dmg *= $lvl ca.overcharge

scoreboard players add $overcharge ca.arrow_dmg 500

execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 1000

scoreboard players operation @s ca.arrow_dmg += $overcharge ca.arrow_dmg
execute store result entity @s damage double 0.001 run scoreboard players get @s ca.arrow_dmg