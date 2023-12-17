scoreboard players set $focus ca.arrow_dmg 5
scoreboard players operation $focus ca.arrow_dmg *= $lvl ca.focus

scoreboard players add $focus ca.arrow_dmg 5

execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 10

scoreboard players operation @s ca.arrow_dmg += $focus ca.arrow_dmg
execute store result entity @s damage double 0.1 run scoreboard players get @s ca.arrow_dmg