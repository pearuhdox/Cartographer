scoreboard players operation $melee ca.vicious = @s ca.vicious

execute if score @s ca.vicious matches 1.. as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/vicious/branch

scoreboard players set $melee ca.vicious 0

#Debug Message
tellraw @a[tag=debug,scores={ca.vicious=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Vicious.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]