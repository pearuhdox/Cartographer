summon skeleton ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["shambler"],DeathLootTable:"shambler",CustomName:'{"text":"Loot Shambler"}',HandItems:[{},{}],HandDropChances:[2.000F,2.000F],ArmorItems:[{},{},{},{}],ArmorDropChances:[2.000F,2.000F,2.000F,2.000F]}

execute as @e[type=skeleton,tag=shambler,distance=..2.5,limit=1,sort=nearest] at @s run function cartographer_loot_additions:stand/branch/equip_shambler

playsound minecraft:entity.skeleton.death hostile @a[distance=..10] ~ ~ ~ 2 0.5
