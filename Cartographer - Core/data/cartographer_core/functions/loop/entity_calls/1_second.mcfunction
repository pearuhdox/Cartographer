#Run Charon Effects
#execute if score $charon ca.installed matches 1.. run function cartographer_charon:loop/1_second/entities

#Run Custom Enchantments Effects
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:loop/1_second/entities

#Run Custom Statuses Effects
execute if score $custom_statuses ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=#bb:hostile] run function cartographer_custom_statuses:loop/1_second/entities

#Run Charon Effects
execute if score $charon ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=#bb:hostile] run function cartographer_charon:loop/1_second/entities

#Run Decay Spread
#execute if entity @s[type=item,nbt={Item:{tag:{Decaying:1}}}] run function cartographer_custom_statuses:effects/infection_spread

#in minecraft:overworld run loot Additions Effects
#function cartographer_loot_additions:loop/tick/entities

#Run Mimic Effects
execute if score $mimics ca.installed matches 1.. if entity @s[type=wither_skeleton] run function cartographer_mimics:loop/1_second/entities

#Run Mob Abilities Effects
execute if score $mob_abilities ca.installed matches 1.. if entity @a[distance=..40] run function cartographer_mob_abilities:loop/1_second/entities

#Run Potion Injector Effects - n/a - Currently there are no entity effects for Potion Injector

#Run Repair Station Effects
execute if score $repair_stations ca.installed matches 1.. run function cartographer_repair_stations:loop/1_second/entities

#Run Other Datapack Effects
function #minecraft:cartographer/entity_clocks/1_second