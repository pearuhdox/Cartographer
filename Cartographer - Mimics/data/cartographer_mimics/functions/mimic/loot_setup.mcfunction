data modify entity @s[tag=!first_tick] ArmorItems[0] set value {id:"minecraft:chest",Count:1b,tag:{DropData:[],DropTable:""}}

data modify entity @s ArmorItems[0].tag.DropData set from block ~ ~ ~ Items
data modify entity @s ArmorItems[0].tag.DropTable set from block ~ ~ ~ LootTable

tag @s add first_tick