#Run Loot Altar Ticking
execute on vehicle if entity @s[type=item_display,tag=ca.is_loot_altar] at @s run function cartographer_loot_additions:loot_altar/master

#Run Multichoice Setup
execute as @s[type=marker,tag=ca.multichoice_marker] at @s if block ~ ~1 ~ minecraft:mangrove_button[face=floor,powered=true] run function cartographer_loot_additions:multichoice/finalize

#Run Soul Chest Ticking
execute on vehicle if entity @s[type=item_display,tag=ca.soul_chest] at @s run function cartographer_loot_additions:soul_chest/tick

#Run Hungry Chest Ticking
execute on vehicle if entity @s[type=item_display,tag=ca.hungry_chest] at @s run function cartographer_loot_additions:hungry_chest/tick
