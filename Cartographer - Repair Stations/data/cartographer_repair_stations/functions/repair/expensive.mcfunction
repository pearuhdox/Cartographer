#scoreboard players set @s LapisCost 0
#scoreboard players set @s XPcost 0

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


execute if entity @p[distance=..5,scores={XPcost=..-1}] run tp 31182015-1851-6191-0000-19213351919 ~ -130 ~
execute if entity @p[distance=..5,scores={LapisCost=..-1}] run tp 31182015-1851-6191-0000-19213351919 ~ -130 ~
execute if entity @p[distance=..5,scores={MaterialCost=..-1}] run tp 31182015-1851-6191-0000-19213351919 ~ -130 ~
execute if entity @p[distance=..5,scores={XPcost=..-1}] run kill 31182015-1851-6191-0000-19213351919
execute if entity @p[distance=..5,scores={LapisCost=..-1}] run kill 31182015-1851-6191-0000-19213351919
execute if entity @p[distance=..5,scores={MaterialCost=..-1}] run kill 31182015-1851-6191-0000-19213351919


execute unless entity @s[scores={XPcost=51..}] if entity @p[distance=..5,scores={XPcost=..-1}] run summon armor_stand ~ ~0.25 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕              ✕","color":"red"}'}
execute unless entity @s[scores={LapisCost=26..}] if entity @p[distance=..5,scores={LapisCost=..-1}] run summon armor_stand ~ ~0 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                      ✕","color":"red"}'}
execute if entity @s[tag=wood] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                      ✕","color":"red"}'}
execute if entity @s[tag=stone] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                    ✕","color":"red"}'}
execute if entity @s[tag=iron] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                   ✕","color":"red"}'}
execute if entity @s[tag=gold] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                   ✕","color":"red"}'}
execute if entity @s[tag=diamond] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                ✕","color":"red"}'}
execute if entity @s[tag=netherite] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                         ✕","color":"red"}'}
execute if entity @s[tag=leather] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕              ✕","color":"red"}'}
execute if entity @s[tag=chain] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕           ✕","color":"red"}'}
execute if entity @s[tag=scute] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕            ✕","color":"red"}'}
execute if entity @s[tag=string] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕            ✕","color":"red"}'}
execute if entity @s[tag=quartz] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                      ✕","color":"red"}'}
execute if entity @s[tag=carrot] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕              ✕","color":"red"}'}
execute if entity @s[tag=fungus] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                        ✕","color":"red"}'}
execute if entity @s[tag=membrane] if entity @p[distance=..5,scores={MaterialCost=..-1}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕                            ✕","color":"red"}'}

execute unless entity @s[scores={XPcost=51..}] if entity @p[distance=..5,scores={XPcost=0..}] run summon armor_stand ~ ~0.25 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔              ✔","color":"green"}'}
execute unless entity @s[scores={LapisCost=26..}] if entity @p[distance=..5,scores={LapisCost=0..}] run summon armor_stand ~ ~0 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                      ✔","color":"green"}'}
execute if entity @s[tag=wood] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                      ✔","color":"green"}'}
execute if entity @s[tag=stone] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                    ✔","color":"green"}'}
execute if entity @s[tag=iron] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                   ✔","color":"green"}'}
execute if entity @s[tag=gold] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                   ✔","color":"green"}'}
execute if entity @s[tag=diamond] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                ✔","color":"green"}'}
execute if entity @s[tag=netherite] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                         ✔","color":"green"}'}
execute if entity @s[tag=leather] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔              ✔","color":"green"}'}
execute if entity @s[tag=chain] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔           ✔","color":"green"}'}
execute if entity @s[tag=scute] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔            ✔","color":"green"}'}
execute if entity @s[tag=string] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔            ✔","color":"green"}'}
execute if entity @s[tag=quartz] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                      ✔","color":"green"}'}
execute if entity @s[tag=carrot] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔              ✔","color":"green"}'}
execute if entity @s[tag=fungus] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                        ✔","color":"green"}'}
execute if entity @s[tag=membrane] if entity @p[distance=..5,scores={MaterialCost=0..}] run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_material_cost","affordable"],DisabledSlots:4144959,CustomName:'{"text":"✔                            ✔","color":"green"}'}

execute if entity @s[scores={XPcost=51..}] run summon armor_stand ~ ~0.25 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_xp_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕ Levels ✕","color":"red"}'}
execute if entity @s[scores={LapisCost=26..}] run summon armor_stand ~ ~0 ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_lapis_cost","too_expensive"],DisabledSlots:4144959,CustomName:'{"text":"✕ Lapis Lazuli ✕","color":"red"}'}

tag @s add calculated