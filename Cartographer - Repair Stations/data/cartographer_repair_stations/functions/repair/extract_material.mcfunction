execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=wood] run clear @p #minecraft:planks 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=stone] run clear @p minecraft:cobblestone 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=iron] run clear @p minecraft:iron_ingot 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=gold] run clear @p minecraft:gold_ingot 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=diamond] run clear @p minecraft:diamond 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=netherite] run clear @p minecraft:netherite_ingot 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=leather] run clear @p minecraft:leather 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=chain] run clear @p minecraft:chain 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=scute] run clear @p minecraft:scute 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=string] run clear @p minecraft:string 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=quartz] run clear @p minecraft:quartz 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=carrot] run clear @p minecraft:carrot 1
execute as 31182015-1851-6191-0000-914162120 if entity @s[tag=warped_fungus] run clear @p minecraft:warped_fungus 1


scoreboard players remove @p MaterialCost 1

execute if entity @p[scores={MaterialCost=1..}] run function cartographer_repair_stations:repair/extract_material