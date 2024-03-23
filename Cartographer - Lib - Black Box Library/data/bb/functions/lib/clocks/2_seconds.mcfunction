
scoreboard players set $2_seconds bbl.clock 0

function #minecraft:bbl/clock/2_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/2_seconds/as_player
