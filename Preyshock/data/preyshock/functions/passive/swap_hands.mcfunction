execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run say swapping

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run particle minecraft:effect ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @a

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run playsound minecraft:block.wooden_door.open player @a[distance=..16] ~ ~ ~ 1 1.2

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run summon item ~ -1 ~ {Glowing:1,NoGravity:1,Age:5981,Tags:["swap_assist"],Item:{id:"minecraft:stone_button",Count:1b}}

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run data modify entity @e[type=item,limit=1,sort=nearest,tag=swap_assist] Item merge from entity @s HandItems[0]

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run data modify entity @s HandItems[0] merge from entity @s HandItems[1]

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run data modify entity @s HandItems[1] merge from entity @e[type=item,limit=1,sort=nearest,tag=swap_assist] Item

execute if entity @p[distance=..6] run execute if entity @s[tag=!swapped] run tag @s add swapped



execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run say unswapping

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run particle minecraft:effect ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @a

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run playsound minecraft:block.wooden_door.open player @a[distance=..16] ~ ~ ~ 1 1.2

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run summon item ~ -1 ~ {Glowing:1,NoGravity:1,Age:5981,Tags:["swap_assist"],Item:{id:"minecraft:stone_button",Count:1b}}

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run data modify entity @e[type=item,limit=1,sort=nearest,tag=swap_assist] Item merge from entity @s HandItems[0]

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run data modify entity @s HandItems[0] merge from entity @s HandItems[1]

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run data modify entity @s HandItems[1] merge from entity @e[type=item,limit=1,sort=nearest,tag=swap_assist] Item

execute unless entity @p[distance=..6] run execute if entity @s[tag=swapped] run tag @s remove swapped