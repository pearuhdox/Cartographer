#Functions for seeding chests.

#Run Item Frame Ground Holders
execute as @s[type=#cartographer_core:item_frames,tag=loot_holder_ground] at @s run function cartographer_loot_additions:loop/tick/branches/loot_holder_ground

#Functions for mulitchoice structures.
execute as @s[type=villager,tag=multichoice_core] run function cartographer_loot_additions:loop/tick/branches/multichoice_core

#Functions for soul chests
execute as @s[type=armor_stand,tag=loot_soul_chest] at @s run function cartographer_loot_additions:loop/tick/branches/soul_chest/tick

#Functions for all armor stand holders.
execute as @s[type=armor_stand,tag=loot_holder_armor] run function cartographer_loot_additions:loop/tick/branches/loot_holder_armor