#Run Custom Enchantments Effects
function cartographer_custom_enchantments:loop/1_second/entities

#Run Custom Statuses Effects
execute if entity @s[type=#cartographer_core:hostile] run function cartographer_custom_statuses:loop/1_second/entities

#Run Decay Spread
#execute if entity @s[type=item,nbt={Item:{tag:{Decaying:1}}}] run function cartographer_custom_statuses:effects/infection_spread

#Run Loot Additions Effects
#function cartographer_loot_additions:loop/tick/entities

#Run Mimic Effects
#function cartographer_mimics:loop/tick/entities

#Run Mob Abilities Effects
function cartographer_mob_abilities:loop/1_second/entities

#Run Potion Injector Effects - n/a - Currently there are no entity effects for Potion Injector

#Run Repair Station Effects
function cartographer_repair_stations:loop/1_second/entities