execute as @p[distance=..5] store result score @s LapisCost run clear @s minecraft:lapis_lazuli 0
execute as @p[distance=..5] store result score @s XPcost run data get entity @s XpLevel

execute if entity @s[tag=wood] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s #minecraft:planks 0
execute if entity @s[tag=stone] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:cobblestone 0
execute if entity @s[tag=iron] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:iron_ingot 0
execute if entity @s[tag=gold] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:gold_ingot 0
execute if entity @s[tag=diamond] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:diamond 0
execute if entity @s[tag=netherite] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:netherite_ingot 0
execute if entity @s[tag=leather] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:leather 0
execute if entity @s[tag=chain] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:chain 0
execute if entity @s[tag=scute] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:scute 0
execute if entity @s[tag=string] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:string 0
execute if entity @s[tag=quartz] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:quartz 0
execute if entity @s[tag=carrot] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:carrot 0
execute if entity @s[tag=fungus] run execute as @p[distance=..5] store result score @s MaterialCost run clear @s minecraft:warped_fungus 0


scoreboard players operation @p[distance=..5] XPcost -= @s XPcost
scoreboard players operation @p[distance=..5] LapisCost -= @s LapisCost
scoreboard players operation @p[distance=..5] MaterialCost -= @s MaterialCost


execute if entity @p[distance=..5,scores={XPcost=..-1}] run tp @e[type=magma_cube,tag=repair_interact_confirm,limit=2,distance=..2.7] ~ -65 ~
execute if entity @p[distance=..5,scores={LapisCost=..-1}] run tp @e[type=magma_cube,tag=repair_interact_confirm,limit=2,distance=..2.7] ~ -65 ~
execute if entity @p[distance=..5,scores={MaterialCost=..-1}] run tp @e[type=magma_cube,tag=repair_interact_confirm,limit=2,distance=..2.7] ~ -65 ~
execute if entity @p[distance=..5,scores={XPcost=..-1}] run tp @e[type=armor_stand,tag=repair_indicator_confirm,limit=2,distance=..2.7] ~ -65 ~
execute if entity @p[distance=..5,scores={LapisCost=..-1}] run tp @e[type=armor_stand,tag=repair_indicator_confirm,limit=2,distance=..2.7] ~ -65 ~
execute if entity @p[distance=..5,scores={MaterialCost=..-1}] run tp @e[type=armor_stand,tag=repair_indicator_confirm,limit=2,distance=..2.7] ~ -65 ~

execute if entity @p[distance=..5,scores={XPcost=..-1}] run summon armor_stand ~ ~0.75 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"Too Expensive!","color":"red"}'}
execute if entity @p[distance=..5,scores={LapisCost=..-1}] run summon armor_stand ~ ~0.75 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"Too Expensive!","color":"red"}'}
execute if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.75 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"Too Expensive!","color":"red"}'}


tag @s add calculated