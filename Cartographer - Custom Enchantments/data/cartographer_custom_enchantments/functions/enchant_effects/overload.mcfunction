execute if entity @s[scores={overload=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute if entity @s[scores={overload=1}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_shocked 3
execute if entity @s[scores={overload=2}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_shocked 5
execute if entity @s[scores={overload=3}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_shocked 7

#Debug Message
tellraw @a[tag=debug,scores={overload=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Overload.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]