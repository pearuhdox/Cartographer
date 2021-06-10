execute unless data entity @s HandItems[0].id run data modify entity @s HandItems[0] set value {id:'minecraft:wooden_sword',Count:1b}
data modify entity @s HandDropChances[0] set value 1.000F

execute if data entity @s HandItems[0].tag.Enchantments run data remove entity @s HandItems[0].tag.Enchantments[{id:'minecraft:vanishing_curse'}]
execute if data entity @s HandItems[0].tag.Enchantments run data remove entity @s HandItems[0].tag.Enchantments[{id:"minecraft:vanishing_curse"}]

data modify entity @s HandItems[0].tag.EntityData set value {}
data modify entity @s HandItems[0].tag.EntityData set from entity @s {}

data modify entity @s HandItems[0].tag.ExaltedDrop set value 1

#Set the proper entity type
execute if entity @s[type=zombie] run data modify entity @s HandItems[0].tag.EntityType set value 1
execute if entity @s[type=husk] run data modify entity @s HandItems[0].tag.EntityType set value 2
execute if entity @s[type=drowned] run data modify entity @s HandItems[0].tag.EntityType set value 3
execute if entity @s[type=skeleton] run data modify entity @s HandItems[0].tag.EntityType set value 4
execute if entity @s[type=wither_skeleton] run data modify entity @s HandItems[0].tag.EntityType set value 5
execute if entity @s[type=stray] run data modify entity @s HandItems[0].tag.EntityType set value 6
execute if entity @s[type=vindicator] run data modify entity @s HandItems[0].tag.EntityType set value 7
execute if entity @s[type=pillager] run data modify entity @s HandItems[0].tag.EntityType set value 8
execute if entity @s[type=evoker] run data modify entity @s HandItems[0].tag.EntityType set value 9
execute if entity @s[type=piglin] run data modify entity @s HandItems[0].tag.EntityType set value 10
execute if entity @s[type=piglin_brute] run data modify entity @s HandItems[0].tag.EntityType set value 11
execute if entity @s[type=zombified_piglin] run data modify entity @s HandItems[0].tag.EntityType set value 12

tag @s add setup