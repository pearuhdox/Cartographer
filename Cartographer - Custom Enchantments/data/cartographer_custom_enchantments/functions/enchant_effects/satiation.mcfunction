function #minecraft:cartographer/events/enchantments/passive/satiation

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 5
function bb:lib/rng

execute if score $value bbl.rng matches 1 if score @s ca.satiation matches 1 run effect give @s speed 10
execute if score $value bbl.rng matches 1 if score @s ca.satiation matches 2 run effect give @s speed 20
execute if score $value bbl.rng matches 1 if score @s ca.satiation matches 3 run effect give @s speed 30

execute if score $value bbl.rng matches 2 if score @s ca.satiation matches 1 run effect give @s strength 10
execute if score $value bbl.rng matches 2 if score @s ca.satiation matches 2 run effect give @s strength 20
execute if score $value bbl.rng matches 2 if score @s ca.satiation matches 3 run effect give @s strength 30

execute if score $value bbl.rng matches 3 if score @s ca.satiation matches 1 run effect give @s haste 10
execute if score $value bbl.rng matches 3 if score @s ca.satiation matches 2 run effect give @s haste 20
execute if score $value bbl.rng matches 3 if score @s ca.satiation matches 3 run effect give @s haste 30

execute if score $value bbl.rng matches 4 if score @s ca.satiation matches 1 run effect give @s regeneration 10
execute if score $value bbl.rng matches 4 if score @s ca.satiation matches 2 run effect give @s regeneration 20
execute if score $value bbl.rng matches 4 if score @s ca.satiation matches 3 run effect give @s regeneration 30

execute if score $value bbl.rng matches 5 if score @s ca.satiation matches 1 run effect give @s absorption 10
execute if score $value bbl.rng matches 5 if score @s ca.satiation matches 2 run effect give @s absorption 20
execute if score $value bbl.rng matches 5 if score @s ca.satiation matches 3 run effect give @s absorption 30