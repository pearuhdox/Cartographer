scoreboard players operation $melee ca.overload = @s ca.overload

execute if entity @s[scores={ca.overload=1..}] as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/overload/branch

scoreboard players set $melee ca.overload 0

#Debug Message
tellraw @a[tag=debug,scores={ca.overload=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Overload.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]