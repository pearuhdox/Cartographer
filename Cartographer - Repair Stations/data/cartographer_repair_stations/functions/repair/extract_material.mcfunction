execute if entity @e[type=armor_stand,tag=repair_display,tag=wood] run clear @s #minecraft:planks 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=stone] run clear @s minecraft:cobblestone 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=iron] run clear @s minecraft:iron_ingot 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=gold] run clear @s minecraft:gold_ingot 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=diamond] run clear @s minecraft:diamond 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=netherite] run clear @s minecraft:netherite_ingot 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=leather] run clear @s minecraft:leather 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=chain] run clear @s minecraft:chain 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=scute] run clear @s minecraft:scute 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=string] run clear @s minecraft:string 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=quartz] run clear @s minecraft:quartz 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=carrot] run clear @s minecraft:carrot 1
execute if entity @e[type=armor_stand,tag=repair_display,tag=warped_fungus] run clear @s minecraft:warped_fungus 1


scoreboard players remove @s MaterialCost 1

execute if entity @s[scores={MaterialCost=1..}] run function cartographer_repair_stations:repair/extract_material