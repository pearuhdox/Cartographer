scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 5

execute store result score $rng_max bbl.rng run data get entity @s HandItems[1].tag.BlockEntityTag.Items

function bb:lib/rng
scoreboard players operation $quiver_choice ca.mob_var = $value bbl.rng

execute if score $quiver_choice ca.mob_var matches 1 run function cartographer_mob_abilities:projectiles/data/get/quiver/option_1
execute if score $quiver_choice ca.mob_var matches 2 run function cartographer_mob_abilities:projectiles/data/get/quiver/option_2
execute if score $quiver_choice ca.mob_var matches 3 run function cartographer_mob_abilities:projectiles/data/get/quiver/option_3
execute if score $quiver_choice ca.mob_var matches 4 run function cartographer_mob_abilities:projectiles/data/get/quiver/option_4
execute if score $quiver_choice ca.mob_var matches 5 run function cartographer_mob_abilities:projectiles/data/get/quiver/option_5

data modify storage cartographer_mob_abilities:projectiles DataTemplate.ArrowDamage set value 0.0

scoreboard players operation $damage_div3 ca.ability_dmg = $damage ca.ability_dmg

scoreboard players operation $damage_div3 ca.ability_dmg *= $100 ca.CONSTANT
scoreboard players operation $damage_div3 ca.ability_dmg /= $3 ca.CONSTANT

execute store result storage cartographer_mob_abilities:projectiles DataTemplate.ArrowDamage double 0.01 run scoreboard players add $damage_div3 ca.ability_dmg 0