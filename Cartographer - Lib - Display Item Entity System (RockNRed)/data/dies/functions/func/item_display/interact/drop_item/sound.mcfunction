
#RNG
#\Set Values
#\\Min
scoreboard players set $rng_min bbl.rng 1
#\\Max
scoreboard players set $rng_max bbl.rng 3
#\Roll
function bb:lib/rng

execute if score $value bbl.rng matches 1 run playsound minecraft:entity.item.pickup player @a[distance=..16,scores={dies.option.player.sounds.world=1}] ~ ~ ~ 0.3 0.9
execute if score $value bbl.rng matches 2 run playsound minecraft:entity.item.pickup player @a[distance=..16,scores={dies.option.player.sounds.world=1}] ~ ~ ~ 0.3 1
execute if score $value bbl.rng matches 3 run playsound minecraft:entity.item.pickup player @a[distance=..16,scores={dies.option.player.sounds.world=1}] ~ ~ ~ 0.3 1.1
