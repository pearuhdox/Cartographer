
#Run Placed Lexica Effects
execute if entity @s[type=armor_stand,tag=placed_lexica] run function cartographer_core:lexica/placed

#Run Custom Enchantments Effects
execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_ce] run function cartographer_custom_enchantments:loop/tick/entity_branch

#Projectile Lifetime Scores - Do this here
execute if entity @s[type=#cartographer_core:projectile] run scoreboard players add @s ca.lifetime 1

#Run Custom Statuses Effects
execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:hostile] run function cartographer_custom_statuses:loop/tick/entities

#Run Decay Spread
execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=item] if entity @s[nbt={Item:{tag:{Decaying:1}}}] run function cartographer_custom_statuses:effects/infection_spread

#Run loot Additions
execute if score $loot_additions ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_la] run function cartographer_loot_additions:loop/tick/entities

#Run Mimic Effects - only on items, armor stands, and wither skeletons
execute if score $mimics ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_mimics] run function cartographer_mimics:loop/tick/entities

#Run Mob Abilities Effects
execute if score $mob_abilities ca.installed matches 1.. if entity @s[type=!item_frame] run function cartographer_mob_abilities:loop/tick/entities

#Run Potion Injector Effects - n/a - Currently there are no entity effects for Potion Injector

#Run Repair Station Effects
execute if score $repair_sations ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_rs] run function cartographer_repair_stations:loop/tick/entities