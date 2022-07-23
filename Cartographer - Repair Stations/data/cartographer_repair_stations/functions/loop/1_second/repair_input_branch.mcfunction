execute if entity @s[tag=empty] if entity @a[distance=..7] run data modify entity @s Invisible set value 0

execute if entity @s[tag=empty] unless entity @a[distance=..7] run data modify entity @s Invisible set value 1

execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_1,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_1"],CustomNameVisible:1,CustomName:'[{"text":"["},{"keybind":"key.use","color":"aqua"},{"text":"] an item"}]'}
execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_2,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~0.75 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_2"],CustomNameVisible:1,CustomName:'[{"text":"into the frame to repair it."}]'}
execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_3,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_3"],CustomNameVisible:1,CustomName:'[{"text":"["},{"keybind":"key.use","color":"aqua"},{"text":"] on the Limitless"}]'}
execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_4,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~0.25 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_4"],CustomNameVisible:1,CustomName:'[{"text":"Tesseract to open it."}]'}

execute if entity @s[tag=empty] unless entity @p[distance=..7,scores={tesseract=1..}] run tellraw @p[distance=..7] {"text":"As you approach the Repair Station, the Tesseract on top glows with energy.","color":"#E24FFF","italic":false}
execute if entity @s[tag=empty] unless entity @p[distance=..7,scores={tesseract=1..}] run tellraw @p[distance=..7] {"text":"Your destroyed items will now be saved inside the Tesseract!","color":"aqua","italic":false}
execute if entity @s[tag=empty] unless entity @p[distance=..7,scores={tesseract=1..}] run playsound minecraft:block.respawn_anchor.set_spawn block @p[distance=..7] ~ ~ ~ 1 1.5
execute if entity @s[tag=empty] unless entity @p[distance=..7,scores={tesseract=1..}] run scoreboard players set @p[distance=..7] tesseract 1

execute if entity @s[tag=empty] unless entity @e[type=villager,tag=void_bag,distance=..3] if entity @a[distance=..7] run summon villager ~-1 ~-1.25 ~ {Silent:1b,NoAI:1b,Tags:["void_bag"],CustomName:'{"text":"Limitless Tesseract","color":"#E24FFF","italic":false}',ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],VillagerData:{level:99,profession:"minecraft:none"},Offers:{Recipes:[{buy:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" ","color":"#E24FFF","italic":false}',Lore:['{"text":"If you destroy any item by depleting","color":"#E24FFF","italic":false}','{"text":"its durability, you can obtain it","color":"#E24FFF","italic":false}','{"text":"from here for a material cost.","color":"#E24FFF","italic":false}']}}},sell:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" ","color":"#E24FFF","italic":false}',Lore:['{"text":"If you destroy any item by depleting","color":"#E24FFF","italic":false}','{"text":"its durability, you can obtain it","color":"#E24FFF","italic":false}','{"text":"from here for a material cost.","color":"#E24FFF","italic":false}']}}}}]}}
execute if entity @s[tag=empty] if entity @a[distance=..7] as @e[type=villager,tag=void_bag,tag=!set,distance=..3] at @s run function cartographer_repair_stations:void_bag/set_items
execute if entity @s[tag=empty] if entity @a[distance=..7] as @e[type=villager,tag=void_bag,tag=!set,distance=..3] at @s run tag @s add set

execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_1,distance=..5]
execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_2,distance=..5]
execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_3,distance=..5]
execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_4,distance=..5]
execute if entity @s[tag=empty] unless entity @a[distance=..7] as @e[type=villager,tag=void_bag,distance=..5] at @s run function cartographer_repair_stations:void_bag/return_items
execute if entity @s[tag=empty] unless entity @a[distance=..7] run tp @e[type=villager,tag=void_bag,distance=..5] ~ -130 ~

tag @s add empty
execute if data entity @s Item run tag @s remove empty

execute if entity @s[tag=!empty] if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {CustomNameVisible:0b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_display"],Pose:{LeftArm:[0f,45f,0f],RightArm:[0f,225f,0f],LeftLeg:[30f,0f,0f],RightLeg:[330f,0f,0f],Head:[15f,0f,0f]},DisabledSlots:4144959,CustomName:'{"text":" "}'}

execute if entity @s[tag=!empty] run function cartographer_repair_stations:repair/is_valid_item

execute if entity @s[tag=empty] run kill @e[tag=repair_invalid,distance=..3,limit=1,sort=nearest]