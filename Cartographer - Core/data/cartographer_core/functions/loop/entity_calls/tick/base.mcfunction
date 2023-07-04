#Run All Hostile Entity Effects
execute if entity @s[type=#cartographer_core:hostile] run function cartographer_core:loop/entity_calls/tick/types/hostile

#Run All Marker Entity Effects - Saving this for 1.19.4
execute if entity @s[type=#cartographer_core:markers] run function cartographer_core:loop/entity_calls/tick/types/markers

#Run All Projectile Effects
execute if entity @s[type=#cartographer_core:projectile] run function cartographer_core:loop/entity_calls/tick/types/projectiles

#Nothing Currently Runs on Item Frames - Leaving this for placeholder... Run All Item Frame Effects
#execute if entity @s[type=#cartographer_core:item_frames] run function cartographer_core:loop/entity_calls/tick/types/item_frames

#Run All Item Drop Effects
execute if entity @s[type=item] run function cartographer_core:loop/entity_calls/tick/types/items


function cartographer_core:loop/entity_calls/tick/types/entities

#Run Charon Effects for stuff that ISNT in the above types
execute unless entity @s[type=#cartographer_core:omitted_groups] run function cartographer_core:loop/entity_calls/tick/types/omitted_groups
