execute as @e[type=#bb:hostile,distance=..8] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/mob_branch

playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

tag @s remove evading

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Evasion.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]