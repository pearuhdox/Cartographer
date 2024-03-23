
scoreboard players set $1_second bbl.clock 0

function #minecraft:bbl/clock/1_second/global

execute as @a at @s run function #minecraft:bbl/clock/1_second/as_player
