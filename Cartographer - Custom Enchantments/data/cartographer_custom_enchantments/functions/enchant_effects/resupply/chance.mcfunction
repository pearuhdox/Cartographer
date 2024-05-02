scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 20

function bb:lib/rng


execute if score $value bbl.rng <= @s ca.resupply run function cartographer_custom_enchantments:enchant_effects/resupply/proc