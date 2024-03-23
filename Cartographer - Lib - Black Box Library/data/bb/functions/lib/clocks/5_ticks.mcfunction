
scoreboard players set $5_ticks bbl.clock 0

function #minecraft:bbl/clock/5_ticks/global

execute as @a at @s run function #minecraft:bbl/clock/5_ticks/as_player
