execute if entity @s[scores={decay=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:dust 0.1 0 0 0.25 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if entity @s[scores={decay=1}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_infect 3
execute if entity @s[scores={decay=2}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_infect 5
execute if entity @s[scores={decay=3}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_infect 7

#Debug Message
tellraw @a[tag=debug,scores={decay=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Decay.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]