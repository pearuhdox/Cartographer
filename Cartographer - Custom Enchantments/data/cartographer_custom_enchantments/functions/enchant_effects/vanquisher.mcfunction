scoreboard players operation $melee ca.vanquisher = @s ca.vanquisher

execute if score @s ca.vanquisher matches 1.. as @e[type=#cartographer_core:hostile,tag=elite,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/vanquisher/branch

scoreboard players set $melee ca.vanquisher 0

#Debug Message
tellraw @a[tag=debug,scores={ca.vanquisher=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Vanquisher.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]