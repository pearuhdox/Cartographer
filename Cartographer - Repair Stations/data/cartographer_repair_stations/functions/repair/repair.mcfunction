execute as @p[distance=..5] store result score @s LapisCost run clear @s minecraft:lapis_lazuli 0
execute as @p[distance=..5] store result score @s XPcost run data get entity @s XpLevel

execute if entity @s[tag=wood] as @p[distance=..5] store result score @s MaterialCost run clear @s #minecraft:planks 0
execute if entity @s[tag=stone] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:cobblestone 0
execute if entity @s[tag=iron] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:iron_ingot 0
execute if entity @s[tag=gold] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:gold_ingot 0
execute if entity @s[tag=diamond] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:diamond 0
execute if entity @s[tag=netherite] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:netherite_ingot 0
execute if entity @s[tag=leather] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:leather 0
execute if entity @s[tag=chain] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:chain 0
execute if entity @s[tag=scute] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:scute 0
execute if entity @s[tag=string] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:string 0
execute if entity @s[tag=quartz] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:quartz 0
execute if entity @s[tag=carrot] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:carrot 0
execute if entity @s[tag=fungus] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:warped_fungus 0
execute if entity @s[tag=membrane] as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:phantom_membrane 0


scoreboard players operation @p[distance=..5] XPcost -= @s XPcost
scoreboard players operation @p[distance=..5] LapisCost -= @s LapisCost
scoreboard players operation @p[distance=..5] MaterialCost -= @s MaterialCost

execute if score @p XPcost matches 0.. if score @p LapisCost matches 0.. if score @p MaterialCost matches 0.. run function cartographer_repair_stations:repair/repair_complete
execute unless score @p XPcost matches 0.. run tag @s add failed_repair
execute unless score @p LapisCost matches 0.. run tag @s add failed_repair
execute unless score @p MaterialCost matches 0.. run tag @s add failed_repair

execute if entity @s[tag=failed_repair] run function cartographer_repair_stations:repair/repair_fail

tag @s remove failed_repair