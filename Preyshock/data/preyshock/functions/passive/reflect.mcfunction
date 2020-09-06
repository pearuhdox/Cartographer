#Toggles the Reflect Melee/Ranged state for Reflect Passives.


#Ranged
execute as @s[tag=reflect_ranged] at @s run execute unless entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_ranged] at @s run execute unless entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:shield{Enchantments:[{id:"minecraft:thorns",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUIDLeast:-6042480,UUIDMost:-6436474,Slot:"offhand"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:8,Operation:0,UUIDLeast:8948478,UUIDMost:-6934439,Slot:"offhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:8529216,UUIDMost:5280836,Slot:"offhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:10,Operation:0,UUIDLeast:-3409292,UUIDMost:2808624,Slot:"offhand"}],BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:8,Pattern:"mr"},{Color:0,Pattern:"bt"}]}} 1

execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_ranged] at @s run execute if entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:air 1

execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^1 ^1.5 ^1 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^ ^1.5 ^1.5 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^-1 ^1.5 ^1 0 0.5 0 0.01 10 normal


#Melee
execute as @s[tag=reflect_melee] at @s run execute unless entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_melee] at @s run execute if entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:shield{Enchantments:[{id:"minecraft:thorns",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUIDLeast:-6042480,UUIDMost:-6436474,Slot:"offhand"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:8,Operation:0,UUIDLeast:8948478,UUIDMost:-6934439,Slot:"offhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:8529216,UUIDMost:5280836,Slot:"offhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:10,Operation:0,UUIDLeast:-3409292,UUIDMost:2808624,Slot:"offhand"}],BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:8,Pattern:"mr"},{Color:0,Pattern:"bt"}]}} 1

execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_melee] at @s run execute unless entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:air 1

execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^1 ^1.5 ^1 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^ ^1.5 ^1.5 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^-1 ^1.5 ^1 0 0.5 0 0.01 10 normal