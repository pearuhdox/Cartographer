execute unless data entity @s ArmorItems[0].id run data modify entity @s ArmorItems[0] set value {id:"minecraft:stone_button",Count:1b,tag:{SoulLinkId:0}}

data modify entity @s ArmorDropChances[0] set value 1.000F

execute store result entity @s ArmorItems[0].tag.SoulLinkId int 1 run scoreboard players add $soul_chain_id ca.soul_chain_id 0