execute if entity @s[tag=ca.spectre_spawner_item] run function cartographer_mob_abilities:death/spectral/egg_tick
execute if entity @s[tag=ca.legionary_egg] run function cartographer_mob_abilities:ability_traits/legionary/egg_tick

tag @s add processed