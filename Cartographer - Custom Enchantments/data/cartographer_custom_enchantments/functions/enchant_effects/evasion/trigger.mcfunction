effect give @e[type=#bb:hostile,distance=..8] minecraft:blindness 3 0
execute as @e[type=#bb:hostile,distance=..8] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[type=#bb:hostile,distance=..8] at @s run function cartographer_core:helper/push_half

playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

tag @s remove evading

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Evasion.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]