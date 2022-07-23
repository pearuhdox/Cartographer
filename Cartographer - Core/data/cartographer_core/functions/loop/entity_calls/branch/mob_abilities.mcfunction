execute if entity @s[type=!item] if entity @a[distance=..40] run function cartographer_mob_abilities:loop/tick/entities
execute if entity @s[type=!item] run function cartographer_mob_abilities:loop/tick/entities_long_distance
execute if entity @s[type=item] if data entity @s {Item:{tag:{DeathEffect:1}}} run function cartographer_mob_abilities:loop/tick/run_death_effects