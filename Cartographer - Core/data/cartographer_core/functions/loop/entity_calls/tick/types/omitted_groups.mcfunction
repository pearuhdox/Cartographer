execute if score $charon ca.installed matches 1.. if entity @s run function cartographer_core:loop/entity_calls/tick/types/omitted_groups/charon

#Run Custom Enchantments Effects for stuff that ISNT in the above types
execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_ce] run function cartographer_core:loop/entity_calls/tick/types/omitted_groups/custom_enchantments

#Run Custom Statuses Effects fpr stiff that ISNT in the above types
#execute if score $custom_statuses ca.installed matches 1.. if entity @a[distance=..40] run function cartographer_core:loop/entity_calls/branch/custom_statuses

#Run Mimic Effects for stuff that ISNT in the above types- only on items, armor stands, and wither skeletons
execute if score $mimics ca.installed matches 1.. if entity @a[distance=..40] if entity @s[type=armor_stand] run function cartographer_core:loop/entity_calls/tick/types/omitted_groups/mimics

#Run Mob Abilities Effects for stuff that ISNT in the above types
execute if score $mob_abilities ca.installed matches 1.. if entity @a[distance=..100] if entity @s[type=#cartographer_core:tracked_for_ma] run function cartographer_core:loop/entity_calls/tick/types/omitted_groups/mob_abilities

#Run Repair Station Effects for stuff that ISNT in the above types
#execute if score $repair_stations ca.installed matches 1.. if entity @s[type=#cartographer_core:tracked_for_rs] run function cartographer_repair_stations:loop/tick/entities