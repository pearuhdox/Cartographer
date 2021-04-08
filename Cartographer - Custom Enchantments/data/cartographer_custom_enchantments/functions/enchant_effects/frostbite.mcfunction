execute if entity @s[scores={frostbite=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if entity @s[scores={frostbite=1}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] slowness 4 0
execute if entity @s[scores={frostbite=2}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] slowness 4 1
execute if entity @s[scores={frostbite=3}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] slowness 4 2
execute if entity @s[scores={frostbite=4}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] slowness 4 3
execute if entity @s[scores={frostbite=5}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] slowness 4 4

#Debug Message
tellraw @a[tag=debug,scores={frostbite=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Frostbite.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]