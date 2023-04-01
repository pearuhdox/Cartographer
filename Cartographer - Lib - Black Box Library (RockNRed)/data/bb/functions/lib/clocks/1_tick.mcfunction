
scoreboard players set $1_tick bbl.clock 0

function #minecraft:bbl/clock/1_tick/global

execute as @a at @s run function #minecraft:bbl/clock/1_tick/as_player
