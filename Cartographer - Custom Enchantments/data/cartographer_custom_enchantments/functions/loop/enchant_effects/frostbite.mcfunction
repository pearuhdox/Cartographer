execute if entity @s[scores={frostbite=1..}] run execute as @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if entity @s[scores={frostbite=1}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] slowness 5 0
execute if entity @s[scores={frostbite=2}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] slowness 5 1
execute if entity @s[scores={frostbite=3}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] slowness 5 2
execute if entity @s[scores={frostbite=4}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] slowness 5 3
execute if entity @s[scores={frostbite=5}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] slowness 5 4