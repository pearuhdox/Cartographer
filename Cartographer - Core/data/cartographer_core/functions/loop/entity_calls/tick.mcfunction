
#Run Placed Lexica Effects
execute if entity @s[type=armor_stand,tag=placed_lexica] run function cartographer_core:lexica/placed

#Run Placed Charon Effects
execute if score $charon ca.installed matches 1.. if entity @s run function cartographer_charon:loop/tick/entities

#Run Custom Enchantments Effects
execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_ce] run function cartographer_custom_enchantments:loop/tick/entity_branch

#Projectile Lifetime Scores - Do this here
execute if entity @s[type=#cartographer_core:projectile] run scoreboard players add @s ca.lifetime 1

#Run Custom Statuses Effects
execute if score $custom_statuses ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=#cartographer_core:hostile] run function cartographer_custom_statuses:loop/tick/entities

#Run Decay Spread
execute if score $custom_statuses ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=item] if entity @s[nbt={Item:{tag:{Decaying:1}}}] run function cartographer_custom_statuses:effects/infection_spread

#Run Mimic Effects - only on items, armor stands, and wither skeletons
execute if score $mimics ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=#cartographer_core:tracked_for_mimics] run function cartographer_mimics:loop/tick/entities

#Run Mob Abilities Effects
execute if score $mob_abilities ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=#cartographer_core:tracked_for_ma] run function cartographer_mob_abilities:loop/tick/entities
execute if score $mob_abilities ca.installed matches 1.. if entity @a[distance=..100] if entity @s[type=#cartographer_core:tracked_for_ma] run function cartographer_mob_abilities:loop/tick/entities_long_distance
execute if score $mob_abilities ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=item] if entity @s[nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects

#Run Potion Util Effects
#execute if entity @s[type=hopper_minecart] run function cartographer_potion_util:loop/tick/entities

#Run Repair Station Effects
execute if score $repair_stations ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_rs] run function cartographer_repair_stations:loop/tick/entities