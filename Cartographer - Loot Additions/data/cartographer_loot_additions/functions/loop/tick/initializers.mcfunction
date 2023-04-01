#execute as @s[type=item_frame,tag=loot_holder_spawn] run function cartographer_loot_additions:placed/initialize
#execute as @s[type=glow_item_frame,tag=loot_holder_spawn] run function cartographer_loot_additions:placed_glow/initialize
execute as @s[type=item_frame,tag=loot_multichoice_spawn] run function cartographer_loot_additions:multichoice/initialize
execute as @s[type=item_frame,tag=loot_altar_spawn] run function cartographer_loot_additions:altar/initialize
#execute as @s[type=armor_stand,tag=loot_holder_armor,tag=fix_rot_mojang_stupid] at @s run function cartographer_loot_additions:stand/fix_rot_mojang_bad
#execute as @s[type=armor_stand,tag=loot_holder_armor,tag=!spawned,tag=!filled] run function cartographer_loot_additions:stand/initialize
execute as @s[type=armor_stand,tag=loot_soul_chest,tag=!spawned] run function cartographer_loot_additions:soul_chest/initialize
