summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exalted_weapon"],Pose:{RightArm:[0f,0f,315f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stone_button",Count:1b},{}],HandDropChances:[0.085F,0.085F],CustomName:'{"text":"Oathbound Weapon"}'}

data modify entity @e[type=armor_stand,tag=exalted_weapon,limit=1,sort=nearest,distance=..2] HandItems[0] set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{ExaltedDrop:1}}}] Item

kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{ExaltedDrop:1}}}]

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["exalted_soul_stand"],Pose:{RightArm:[0f,0f,315f]},DisabledSlots:4144959,Passengers:[{id:"minecraft:sheep",DeathLootTable:"no_lol",NoAI:1b,Health:10f,Sheared:1b,Silent:1b,Tags:["exalted_soul_hitbox"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000}],Attributes:[{Name:generic.max_health,Base:20}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2045972938,-993705354,-1705029306,1872701067],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc5OTM1MDk4NWZiMTYzYzFjYjc2NGM4YjExOWRiZDJmMzdiZmMwZDZmYjAzMDFiYmFlMzc0NmYxYWVjZjgxYyJ9fX0="}]}}}}],CustomName:'{"text":"Oathbound Soul"}'}

execute as @e[tag=exalted_soul_stand,type=armor_stand,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/exalted_place


execute as @e[tag=exalted_soul_stand,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[tag=exalted_weapon,type=armor_stand,limit=1,sort=nearest] feet

playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 10 0.5

particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

kill @s

#say test