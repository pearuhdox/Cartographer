#Run Placed Lexica Effects
execute if entity @s[type=armor_stand,tag=placed_lexica] run function cartographer_core:lexica/placed

#Run Custom Enchantments Effects
function cartographer_custom_enchantments:loop/tick/entity_branch

#Run Custom Statuses Effects
execute if entity @s[type=#cartographer_core:hostile] run function cartographer_custom_statuses:loop/tick/entities

#Run Decay Spread
execute if entity @s[type=item,nbt={Item:{tag:{Decaying:1}}}] run function cartographer_custom_statuses:effects/infection_spread

#in minecraft:overworld run loot Additions Effects
function cartographer_loot_additions:loop/tick/entities

#Run Mimic Effects
function cartographer_mimics:loop/tick/entities

#Run Mob Abilities Effects
execute if entity @s[tag=!item_frame] run function cartographer_mob_abilities:loop/tick/entities

#Run Potion Injector Effects - n/a - Currently there are no entity effects for Potion Injector

#Run Repair Station Effects
function cartographer_repair_stations:loop/tick/entities