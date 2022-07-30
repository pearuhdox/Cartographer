execute if score @s ca.horrified matches 21.. run effect give @s darkness 2 0 true

execute if score @s ca.horrified matches 1.. run stopsound @s ambient
execute if score @s ca.horrified matches 1.. run stopsound @s block
execute if score @s ca.horrified matches 1.. run stopsound @s hostile
execute if score @s ca.horrified matches 1.. run stopsound @s neutral
execute if score @s ca.horrified matches 1.. run stopsound @s weather

execute unless entity @s[tag=horrified] run playsound minecraft:ambient.basalt_deltas.mood master @s ~ ~ ~ 100 1.5 1
execute unless entity @s[tag=horrified] run playsound minecraft:ambient.basalt_deltas.additions master @s ~ ~ ~ .5 .8 .5
execute unless entity @s[tag=horrified] run playsound minecraft:ambient.soul_sand_valley.loop master @s ~ ~ ~ 100 .5 1
execute unless entity @s[tag=horrified] run effect give @s slowness 2 2 true

scoreboard players operation $mod_check ca.horrified = @s ca.horrified
scoreboard players operation $mod_check ca.horrified %= $20 ca.CONSTANT

scoreboard players operation $mod_check2 ca.horrified = @s ca.horrified
scoreboard players operation $mod_check2 ca.horrified %= $60 ca.CONSTANT

scoreboard players operation $mod_check3 ca.horrified = @s ca.horrified
scoreboard players operation $mod_check3 ca.horrified %= $80 ca.CONSTANT

execute if score $mod_check ca.horrified matches 0 run playsound minecraft:entity.warden.heartbeat master @s
execute if score $mod_check2 ca.horrified matches 0 run playsound minecraft:block.conduit.attack.target master @s

execute if score $mod_check3 ca.horrified matches 0 run scoreboard players set $rng_min bbl.rng 1
execute if score $mod_check3 ca.horrified matches 0 run scoreboard players set $rng_max bbl.rng 8
execute if score $mod_check3 ca.horrified matches 0 run function bb:lib/rng

execute if score $mod_check3 ca.horrified matches 0 if score $value bbl.rng matches 2 if score @s ca.horrified matches 1.. run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1 0.5

execute if score @s ca.horrified matches 2.. run tag @s add horrified
execute if score @s ca.horrified matches 1 run tag @s remove horrified

execute if score @s ca.horrified matches 1 run stopsound @s master minecraft:ambient.basalt_deltas.mood
execute if score @s ca.horrified matches 1 run stopsound @s master minecraft:ambient.basalt_deltas.additions
execute if score @s ca.horrified matches 1 run stopsound @s master minecraft:ambient.soul_sand_valley.loop

scoreboard players remove @s[scores={ca.horrified=1..}] ca.horrified 1
