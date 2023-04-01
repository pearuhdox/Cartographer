
scoreboard players set $5_seconds bbl.clock 0

function #minecraft:bbl/clock/5_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/5_seconds/as_player
