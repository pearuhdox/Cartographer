execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $base_melee_bonus ca.attr_random_crit

function cartographer_custom_enchantments:attribute_effects/random_crit/base_melee/macro with storage cartographer:macro.custom_enchantments

particle minecraft:crit ~ ~1.5 ~ 0.25 0.25 0.25 0.2 10 normal
playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 0.75