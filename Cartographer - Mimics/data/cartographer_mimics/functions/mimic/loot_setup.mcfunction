data modify entity @s[tag=!first_tick] ArmorItems[0] set value {id:"minecraft:chest",Count:1b,tag:{DropData:[],DropTable:""}}
execute if entity @s[tag=double_mimic,tag=!first_tick] run data modify entity @s ArmorItems[0] set value {id:"minecraft:chest",Count:1b,tag:{DropData:[],DropTable:"",DropData2:[],DropTable2:""}}

data modify entity @s ArmorItems[0].tag.DropData set from block ~ ~ ~ Items
data modify entity @s ArmorItems[0].tag.DropTable set from block ~ ~ ~ LootTable

execute if entity @s[tag=double_mimic] if block ~-1 ~ ~ trapped_chest run data modify entity @s ArmorItems[0].tag.DropData2 set from block ~-1 ~ ~ Items
execute if entity @s[tag=double_mimic] if block ~-1 ~ ~ trapped_chest run data modify entity @s ArmorItems[0].tag.DropTable2 set from block ~-1 ~ ~ LootTable

execute if entity @s[tag=double_mimic] if block ~ ~ ~-1 trapped_chest run data modify entity @s ArmorItems[0].tag.DropData2 set from block ~ ~ ~-1 Items
execute if entity @s[tag=double_mimic] if block ~ ~ ~-1 trapped_chest run data modify entity @s ArmorItems[0].tag.DropTable2 set from block ~ ~ ~-1 LootTable

tag @s add first_tick