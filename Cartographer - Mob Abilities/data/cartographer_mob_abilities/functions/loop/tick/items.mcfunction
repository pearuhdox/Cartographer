execute if data entity @s[tag=!processed] {Item:{tag:{DeathEffect:1}}} run function cartographer_mob_abilities:loop/tick/run_death_effects
execute if data entity @s[tag=!processed] Item.tag.SoulLinkId run function cartographer_mob_abilities:passive/soul_chain/identify_id_kill
execute if entity @s[tag=ca.spectre_spawner_item] run function cartographer_mob_abilities:passive/spectral/egg_tick
execute if entity @s[tag=ca.legionary_egg] run function cartographer_mob_abilities:ability_traits/legionary/egg_tick

tag @s add processed