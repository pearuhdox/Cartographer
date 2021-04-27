execute if entity @s[tag=held] run execute store result score @s XPcost run data get entity @s HandItems[0].tag.RepairCost
execute if entity @s[tag=feet] run execute store result score @s XPcost run data get entity @s ArmorItems[0].tag.RepairCost
execute if entity @s[tag=legs] run execute store result score @s XPcost run data get entity @s ArmorItems[1].tag.RepairCost
execute if entity @s[tag=chest] run execute store result score @s XPcost run data get entity @s ArmorItems[2].tag.RepairCost
execute if entity @s[tag=helm] run execute store result score @s XPcost run data get entity @s ArmorItems[3].tag.RepairCost
scoreboard players set @s[scores={XPcost=..12}] XPcost 12

execute if entity @s[tag=held] run execute store result score @s LapisCost run data get entity @s HandItems[0].tag.LapisCost
execute if entity @s[tag=feet] run execute store result score @s LapisCost run data get entity @s ArmorItems[0].tag.LapisCost
execute if entity @s[tag=legs] run execute store result score @s LapisCost run data get entity @s ArmorItems[1].tag.LapisCost
execute if entity @s[tag=chest] run execute store result score @s LapisCost run data get entity @s ArmorItems[2].tag.LapisCost
execute if entity @s[tag=helm] run execute store result score @s LapisCost run data get entity @s ArmorItems[3].tag.LapisCost
scoreboard players set @s[scores={LapisCost=..4}] LapisCost 4

scoreboard players set @s MaterialCost 4

scoreboard players operation @p XPcost = @s XPcost
scoreboard players operation @p LapisCost = @s LapisCost

execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon armor_stand ~ ~0.25 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost"],DisabledSlots:4144959,CustomName:'{"text":"to fix level grumble grumble","color":"#82FF4D"}'}
execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon armor_stand ~ ~0 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost"],DisabledSlots:4144959,CustomName:'{"text":"to fix lapis grumble grumble","color":"#263CFF"}'}

execute positioned ~1 0 ~ run setblock ~ ~ ~ oak_sign replace
execute positioned ~-1 0 ~ run setblock ~ ~ ~ oak_sign replace

data modify block ~1 0 ~ Text1 set value '[{"score":{"name":"@p","objective":"XPcost"},"color":"#82FF4D","italic":false},{"text":" Levels","color":"#82FF4D","italic":false}]'
data modify block ~-1 0 ~ Text1 set value '[{"score":{"name":"@p","objective":"LapisCost"},"color":"#263CFF","italic":false},{"text":" Lapis Lazuli","color":"#263CFF","italic":false}]'

execute positioned ~1 0 ~ as @s run data modify entity @e[type=armor_stand,tag=repair_xp_cost,limit=1] CustomName set from block ~ 0 ~ Text1
execute positioned ~-1 0 ~ as @s run data modify entity @e[type=armor_stand,tag=repair_lapis_cost,limit=1] CustomName set from block ~ 0 ~ Text1

execute positioned ~1 0 ~ run setblock ~ ~ ~ bedrock replace
execute positioned ~-1 0 ~ run setblock ~ ~ ~ bedrock replace

execute if entity @s[scores={MaterialCost=4},tag=wood] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Wooden Planks","color":"#856A46"}'}
execute if entity @s[scores={MaterialCost=4},tag=stone] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Cobblestone","color":"#696969"}'}
execute if entity @s[scores={MaterialCost=4},tag=iron] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Iron Ingots","color":"#C4C4C4"}'}
execute if entity @s[scores={MaterialCost=4},tag=gold] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Gold Ingots","color":"#FFF347"}'}
execute if entity @s[scores={MaterialCost=4},tag=diamond] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Diamonds","color":"#00EEFF"}'}
execute if entity @s[scores={MaterialCost=4},tag=netherite] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Netherite Ingots","color":"#291D1D"}'}
execute if entity @s[scores={MaterialCost=4},tag=leather] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Leather","color":"#9C5300"}'}
execute if entity @s[scores={MaterialCost=4},tag=chain] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Chain","color":"#8C8C8C"}'}
execute if entity @s[scores={MaterialCost=4},tag=string] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 String","color":"#EBEBEB"}'}
execute if entity @s[scores={MaterialCost=4},tag=quartz] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Nether Quartz","color":"#FFDBE0"}'}
execute if entity @s[scores={MaterialCost=4},tag=scute] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Scute","color":"#086601"}'}
execute if entity @s[scores={MaterialCost=4},tag=carrot] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Carrots","color":"#FF8000"}'}
execute if entity @s[scores={MaterialCost=4},tag=fungus] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Warped Fungus","color":"#008C7A"}'}
execute if entity @s[scores={MaterialCost=4},tag=membrane] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost"],DisabledSlots:4144959,CustomName:'{"text":"4 Phantom Membrane","color":"#C5C5EB"}'}


execute if score @s XPcost > $repair_max XPcost run summon armor_stand ~ ~0.75 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"Too Expensive!","color":"red"}'}
execute if score @s LapisCost > $repair_max LapisCost run summon armor_stand ~ ~0.75 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"Too Expensive!","color":"red"}'}

execute positioned ~ 0 ~ run setblock ~ ~ ~ oak_sign replace
data modify block ~ 0 ~ Text1 set value '[{"selector":"@p","color":"gold","italic":false},{"text":"\'s item!","color":"white","italic":false}]'

execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon armor_stand ~2 ~-0.1 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_confirm"],DisabledSlots:4144959,CustomName:'[{"text":"[","color":"white"},{"keybind":"key.attack","color":"aqua"},{"text":"]"}]'}
execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon armor_stand ~2 ~-0.35 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_confirm"],DisabledSlots:4144959,CustomName:'{"text":"to repair","color":"white"}'}
execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon armor_stand ~2 ~-0.6 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_confirm","player_tag_indicator"],DisabledSlots:4144959,CustomName:'{"text":"to be fixed grumble grumble","color":"white"}'}

execute unless score @s XPcost > $repair_max XPcost unless score @s LapisCost > $repair_max LapisCost run summon sheep ~2 ~ ~ {Sheared:1b,NoGravity:1b,Silent:1b,CustomNameVisible:1b,DeathLootTable:"no",NoAI:1b,Health:1000f,Size:0,Tags:["repair_interact_confirm"],CustomName:'[{"text":"[","color":"white"},{"keybind":"key.attack","color":"aqua"},{"text":"] to repair!"}]',Attributes:[{Name:generic.max_health,Base:1000}]}


summon armor_stand ~-2 ~-0.1 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_return"],DisabledSlots:4144959,CustomName:'[{"text":"[","color":"white"},{"keybind":"key.attack","color":"aqua"},{"text":"]"}]'}
summon armor_stand ~-2 ~-0.35 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_return"],DisabledSlots:4144959,CustomName:'{"text":"to return","color":"white"}'}
summon armor_stand ~-2 ~-0.6 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_indicator_return","player_tag_indicator"],DisabledSlots:4144959,CustomName:'{"text":"to be fixed grumble grumble","color":"white"}'}

summon sheep ~-2 ~ ~ {Sheared:1b,NoGravity:1b,Silent:1b,CustomNameVisible:1b,DeathLootTable:"no",NoAI:1b,Health:1000f,Size:0,Tags:["repair_interact_return"],CustomName:'[{"text":"[","color":"white"},{"keybind":"key.attack","color":"aqua"},{"text":"] to return item!"}]',Attributes:[{Name:generic.max_health,Base:1000}]}

execute positioned ~ 0 ~ as @e[type=armor_stand,tag=player_tag_indicator] run data modify entity @s CustomName set from block ~ 0 ~ Text1

execute positioned ~ 0 ~ run setblock ~ ~ ~ bedrock replace