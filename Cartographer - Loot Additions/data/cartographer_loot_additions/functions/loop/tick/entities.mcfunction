#Functions for seeding chests.
execute as @s[type=area_effect_cloud,tag=seeded_chest] at @s if block ~ ~ ~ #cartographer_core:containers run data modify entity @s Age set value 80
execute as @s[type=area_effect_cloud,tag=seeded_chest] at @s if entity @a[distance=..10] run data modify entity @s Age set value 80


#Functions for placed on ground items.
execute as @s[type=item_frame,tag=loot_holder_spawn] run function cartographer_loot_additions:placed/initialize

execute as @s[type=item_frame,tag=loot_holder_ground,tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:placed/accepting

execute as @s[type=item_frame,tag=loot_holder_ground,tag=filled] unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed/despawn
execute as @s[type=item_frame,tag=loot_holder_ground,tag=filled] if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed/revert

execute as @s[type=item_frame,tag=loot_holder_ground,tag=filled] if block ~ ~-1 ~ air run function cartographer_loot_additions:placed/despawn

#Functions for placed on ground glow items.
execute as @s[type=glow_item_frame,tag=loot_holder_spawn] run function cartographer_loot_additions:placed_glow/initialize

execute as @s[type=glow_item_frame,tag=loot_holder_ground,tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:placed_glow/accepting

execute as @s[type=glow_item_frame,tag=loot_holder_ground,tag=filled] unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed_glow/despawn
execute as @s[type=glow_item_frame,tag=loot_holder_ground,tag=filled] if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed_glow/revert

execute as @s[type=glow_item_frame,tag=loot_holder_ground,tag=filled] if block ~ ~-1 ~ air run function cartographer_loot_additions:placed_glow/despawn


#Functions for mulitchoice structures.
execute as @s[type=item_frame,tag=loot_multichoice_spawn] run function cartographer_loot_additions:multichoice/initialize

execute as @s[type=armor_stand,tag=multichoice_core] at @s run tp @s ~ ~ ~ facing entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] feet
execute as @s[type=armor_stand,tag=multichoice_core] at @s unless block ~ ~ ~ lodestone run function cartographer_loot_additions:multichoice/despawn

execute as @s[type=item_frame,tag=loot_multichoice_side,tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:multichoice/accepting

execute as @s[type=item_frame,tag=loot_multichoice_side,tag=filled] unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:multichoice/despawn_frame
execute as @s[type=item_frame,tag=loot_multichoice_side,tag=filled] if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:multichoice/revert


#Functions for altar structures.
execute as @s[type=item_frame,tag=loot_altar_spawn] run function cartographer_loot_additions:altar/initialize

execute as @s[type=armor_stand,tag=altar_core] at @s run tp @s ~ ~ ~ facing entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] feet
#execute as @s[type=armor_stand,tag=altar_core] at @s unless block ~ ~ ~ emerald_block run function cartographer_loot_additions:altar/despawn

execute as @s[type=item_frame,tag=loot_altar_holder,tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:altar/accepting

execute as @s[type=item_frame,tag=loot_altar_holder,tag=filled] unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/despawn_frame
execute as @s[type=item_frame,tag=loot_altar_holder,tag=filled] if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/revert

execute as @s[type=item_frame,tag=loot_altar_holder,tag=filled] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run function cartographer_loot_additions:altar/protect


#Functions for all loot holder frames.
execute as @s[type=item_frame,tag=loot_holder,tag=random,tag=filled] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] run function cartographer_loot_additions:loot/randomize

execute as @s[type=item_frame,tag=loot_holder,tag=!loot_altar_holder,tag=filled] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..10] run data modify entity @s Invulnerable set value 0b
execute as @s[type=item_frame,tag=loot_holder,tag=!loot_altar_holder,tag=filled] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..10] if entity @e[type=#cartographer_core:explosive,distance=..7] run data modify entity @s Invulnerable set value 1b


#Functions for all armor stand holders.
execute as @s[type=armor_stand,tag=loot_holder_armor,tag=fix_rot_mojang_stupid] at @s run function cartographer_loot_additions:stand/fix_rot_mojang_bad

execute as @s[type=armor_stand,tag=loot_holder_armor,tag=!spawned,tag=!filled] run function cartographer_loot_additions:stand/initialize

execute as @s[type=armor_stand,tag=loot_holder_armor,tag=!filled] at @s run function cartographer_loot_additions:stand/accepting

execute as @s[type=armor_stand,tag=loot_holder_armor,tag=random_main,tag=filled] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] run function cartographer_loot_additions:loot/randomize_stand_main
execute as @s[type=armor_stand,tag=loot_holder_armor,tag=random_off,tag=filled] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] run function cartographer_loot_additions:loot/randomize_stand_off

execute as @s[type=armor_stand,tag=loot_holder_armor,tag=filled] if block ~ ~-0.25 ~ air run function cartographer_loot_additions:stand/force_despawn

execute as @s[type=armor_stand,tag=loot_holder_armor,tag=filled] unless entity @a[gamemode=creative,distance=..10] run function cartographer_loot_additions:stand/despawn
execute as @s[type=armor_stand,tag=loot_holder_armor,tag=filled] if entity @a[gamemode=creative,distance=..10] run function cartographer_loot_additions:stand/revert