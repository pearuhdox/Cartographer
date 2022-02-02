#Run everything that isn't item frames
execute if entity @s[type=!#cartographer_core:item_frames] run function cartographer_core:loop/entity_calls/tick

#Run Loot Additions - Initializes
execute if score $loot_additions ca.installed matches 1.. unless score $la.locked ca.var matches 1 if score $creative_ct ca.creative_ct matches 1.. if entity @s[type=#cartographer_core:tracked_for_la] run function cartographer_loot_additions:loop/tick/initializers

#Run Loot Additions
execute if score $loot_additions ca.installed matches 1.. if score $la.run ca.var matches 1.. if entity @s[tag=ca.la.tracked,type=#cartographer_core:tracked_for_la] run function cartographer_loot_additions:loop/tick/entities
#Run Loot Addition items
execute if score $loot_additions ca.installed matches 1.. if score $la.run ca.var matches 1.. if entity @s[distance=..20,type=item,tag=!la_checked] run function cartographer_loot_additions:loop/tick/branches/items/check_frame