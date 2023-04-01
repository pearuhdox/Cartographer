
scoreboard players set $10_seconds bbl.clock 0

function #minecraft:bbl/clock/10_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/10_seconds/as_player
