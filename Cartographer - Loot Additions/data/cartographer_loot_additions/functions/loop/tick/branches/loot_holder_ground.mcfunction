#Functions for placed on ground items.
execute if entity @s[type=#cartographer_core:item_frames,tag=loot_holder_ground,tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:placed/accepting
execute if entity @s[type=#cartographer_core:item_frames,tag=loot_holder_ground,tag=filled] run function cartographer_loot_additions:loop/tick/branches/loot_holder_ground/filled