#Toggles the Reflect Melee/Ranged state for Reflect Passives.


#Ranged
execute as @s[tag=reflect_ranged] at @s run execute unless entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_ranged] at @s run execute unless entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:shield{Enchantments:[{id:"minecraft:thorns",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;1746776571,134037508,-1985252837,-751755442]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:8,Operation:0,UUID:[I;2102830431,-1953216707,-1417907823,805476973]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;878778225,-2039722123,-1090163310,-1496844942]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:10,Operation:0,UUID:[I;-113934151,754336739,-1810877296,-688007229]}],BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:8,Pattern:"mr"},{Color:0,Pattern:"bt"}]}} 1

execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_ranged] at @s run execute if entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:air 1
execute as @s[tag=reflect_ranged] at @s run execute if entity @a[distance=..6] run data modify entity @s HandDropChances[1] set value -327.67F

execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^1 ^1.5 ^1 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^ ^1.5 ^1.5 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_ranged] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run particle minecraft:firework ^-1 ^1.5 ^1 0 0.5 0 0.01 10 normal


#Melee
execute as @s[tag=reflect_melee] at @s run execute unless entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_melee] at @s run execute if entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:shield{Enchantments:[{id:"minecraft:thorns",lvl:15s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;1746776571,134037508,-1985252837,-751755442]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:8,Operation:0,UUID:[I;2102830431,-1953216707,-1417907823,805476973]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;878778225,-2039722123,-1090163310,-1496844942]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:10,Operation:0,UUID:[I;-113934151,754336739,-1810877296,-688007229]}],BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:8,Pattern:"mr"},{Color:0,Pattern:"bt"}]}} 1

execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute unless entity @a[distance=..6] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 0.75

execute as @s[tag=reflect_melee] at @s run execute unless entity @a[distance=..6] run replaceitem entity @s weapon.offhand minecraft:air 1
execute as @s[tag=reflect_melee] at @s run execute unless entity @a[distance=..6] run data modify entity @s HandDropChances[1] set value -327.67F

execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^1 ^1.5 ^1 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^ ^1.5 ^1.5 0 0.5 0 0.01 10 normal
execute as @s[tag=reflect_melee] at @s run execute if entity @s[nbt={HandItems:[{},{id:"minecraft:shield",Count:1b}]}] run execute if entity @a[distance=..6] run particle minecraft:firework ^-1 ^1.5 ^1 0 0.5 0 0.01 10 normal