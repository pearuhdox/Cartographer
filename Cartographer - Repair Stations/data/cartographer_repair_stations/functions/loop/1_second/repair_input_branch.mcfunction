execute if entity @s[tag=empty] if entity @a[distance=..7] run data modify entity @s Invisible set value 0

execute if entity @s[tag=empty] unless entity @a[distance=..7] run data modify entity @s Invisible set value 1

execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_1,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~0.35 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_1"],CustomNameVisible:1,CustomName:'[{"text":"["},{"translate":"key.use","color":"aqua"},{"text":"] an item"}]'}
execute if entity @s[tag=empty] unless entity @e[type=armor_stand,tag=repair_instruction_2,distance=..3] if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_2"],CustomNameVisible:1,CustomName:'[{"text":"into the frame to repair it."}]'}


execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_1]
execute if entity @s[tag=empty] unless entity @a[distance=..7] run kill @e[type=armor_stand,tag=repair_instruction_2]

tag @s add empty
execute if data entity @s Item run tag @s remove empty

execute if entity @s[tag=!empty] if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {CustomNameVisible:0b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_display"],Pose:{LeftArm:[0f,45f,0f],RightArm:[0f,225f,0f],LeftLeg:[30f,0f,0f],RightLeg:[330f,0f,0f],Head:[15f,0f,0f]},DisabledSlots:4144959,CustomName:'{"text":" "}'}

execute if entity @s[tag=!empty] run function cartographer_repair_stations:repair/is_valid_item

execute if entity @s[tag=empty] run kill @e[tag=repair_invalid,distance=..3,limit=1,sort=nearest]