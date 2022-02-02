summon skeleton ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["shambler"],CustomName:'{"text":"Loot Shambler"}',DeathLootTable:"shambler",HandItems:[{},{}],HandDropChances:[2.000F,2.000F],ArmorItems:[{},{},{},{}],ArmorDropChances:[2.000F,2.000F,2.000F,2.000F]}
data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] HandItems set from entity @s HandItems
data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] ArmorItems set from entity @s ArmorItems
playsound minecraft:entity.skeleton.death hostile @a[distance=..10] ~ ~ ~ 2 0.5