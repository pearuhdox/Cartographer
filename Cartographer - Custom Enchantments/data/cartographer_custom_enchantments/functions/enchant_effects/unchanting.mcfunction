scoreboard players operation $melee ca.unchanting = @s ca.unchanting

execute if score @s ca.unchanting matches 1.. as @e[type=#bb:hostile,tag=elite,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/unchanting/branch

scoreboard players set $melee ca.unchanting 0

#Debug Message
tellraw @a[tag=debug,scores={ca.unchanting=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Unchanting.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]