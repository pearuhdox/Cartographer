
data merge entity @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,limit=1] {item:{id:"minecraft:bundle",tag:{Items:[{id:"minecraft:wooden_pickaxe",Count:1b}]}}}
data modify entity @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,limit=1] item.tag.loottable set from entity @s SelectedItem.tag.EntityTag.DeathLootTable
scoreboard players set @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,limit=1] dies.object.item_type 2

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Item ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"loot table from held spawn egg","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]

function dies:func/menu/update_display/main
