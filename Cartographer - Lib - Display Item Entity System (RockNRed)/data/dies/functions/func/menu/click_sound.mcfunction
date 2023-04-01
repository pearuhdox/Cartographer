
#RNG
#\Set Values
#\\Min
scoreboard players set $rng_min bbl.rng 1
#\\Max
scoreboard players set $rng_max bbl.rng 3
#\Roll
function bb:lib/rng

execute if score $value bbl.rng matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 0.9
execute if score $value bbl.rng matches 2 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 1
execute if score $value bbl.rng matches 3 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 1.1
