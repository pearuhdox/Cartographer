execute on vehicle if entity @s[tag=ca.is_loot_altar] run function cartographer_loot_additions:loot_altar/destroy

execute on vehicle if entity @s[tag=ca.is_multichoice] as @e[type=block_display,tag=ca.multichoice_top,limit=1,sort=nearest] at @s run function cartographer_loot_additions:multichoice/destroy