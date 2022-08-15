execute if entity @s[tag=empty] run function cartographer_repair_stations:loop/tick/branches/empty

execute unless score $no_tesseract ca.gamerule matches 1.. if entity @s[tag=empty] unless entity @p[distance=..7,scores={tesseract=1..}] run function cartographer_repair_stations:loop/tick/branches/tesseract_activate

tag @s add empty
execute if data entity @s Item run tag @s remove empty

execute if entity @s[tag=!empty] if entity @a[distance=..7] run summon armor_stand ~ ~0.1 ~ {UUID:[I;823664661,407986577,9,336994592],CustomNameVisible:0b,NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:0b,Pose:{LeftArm:[0f,45f,0f],RightArm:[0f,225f,0f],LeftLeg:[30f,0f,0f],RightLeg:[330f,0f,0f],Head:[15f,0f,0f]},DisabledSlots:4144959,CustomName:'{"text":" "}'}

execute if entity @s[tag=!empty] run function cartographer_repair_stations:repair/is_valid_item