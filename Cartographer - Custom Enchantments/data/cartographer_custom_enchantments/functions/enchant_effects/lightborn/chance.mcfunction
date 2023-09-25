scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100


function bb:lib/rng

scoreboard players operation $lightborn_chance ca.ench_var = $value bbl.rng

scoreboard players operation $lightborn_lvl ca.ench_var = @s ca.lightborn
scoreboard players operation $lightborn_lvl ca.ench_var *= $15 ca.CONSTANT

execute if score $lightborn_chance ca.ench_var <= $lightborn_lvl ca.ench_var anchored eyes rotated ~ ~25 positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/lightborn/check_space