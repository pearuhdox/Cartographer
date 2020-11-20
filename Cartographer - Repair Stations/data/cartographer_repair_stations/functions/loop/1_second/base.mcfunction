execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute if entity @a[distance=..7] run data modify entity @s Invisible set value 0

execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute unless entity @a[distance=..7] run data modify entity @s Invisible set value 1

execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute unless entity @e[tag=repair_instruction_1,distance=..3] run execute if entity @a[distance=..7] run summon armor_stand ~ ~0.35 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_1"],CustomNameVisible:1,CustomName:'[{"text":"["},{"translate":"key.use","color":"aqua"},{"text":"] an item"}]'}
execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute unless entity @e[tag=repair_instruction_2,distance=..3] run execute if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {Marker:1b,Invisible:1b,Tags:["repair_instruction_2"],CustomNameVisible:1,CustomName:'[{"text":"into the frame to repair it."}]'}


execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute unless entity @a[distance=..7] run kill @e[tag=repair_instruction_1]
execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run execute unless entity @a[distance=..7] run kill @e[tag=repair_instruction_2]

tag @e[type=item_frame,tag=repair_input,tag=!empty] add empty
tag @e[type=item_frame,tag=repair_input,tag=empty,nbt={Item:{}}] remove empty

execute as @e[tag=repair_input,type=item_frame,tag=!empty] at @s run execute if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {CustomNameVisible:0b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Tags:["repair_display"],Pose:{LeftArm:[0f,45f,0f],RightArm:[0f,225f,0f],LeftLeg:[30f,0f,0f],RightLeg:[330f,0f,0f],Head:[15f,0f,0f]},DisabledSlots:4144959,CustomName:'{"text":" "}'}

execute as @e[tag=repair_input,type=item_frame,tag=!empty] at @s run function cartographer_repair_stations:repair/is_valid_item

execute as @e[tag=repair_input,type=item_frame,tag=empty] at @s run kill @e[tag=repair_invalid,distance=..3,limit=1,sort=nearest]


execute as @e[tag=repair_display,type=armor_stand,predicate=cartographer_repair_stations:empty_stand] at @s run summon item_frame ~ ~ ~ {Glowing:1b,Facing:1b,Invisible:1b,Tags:["repair_input"],Item:{}}
kill @e[type=armor_stand,tag=repair_display,predicate=cartographer_repair_stations:empty_stand]



execute as @e[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/calculate

execute as @e[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/expensive

schedule function cartographer_repair_stations:loop/1_second/base 1s