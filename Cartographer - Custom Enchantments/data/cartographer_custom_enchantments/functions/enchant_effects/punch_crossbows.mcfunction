scoreboard players operation $ranged punch = @s punch

execute if score @s punch matches 1.. as @e[type=arrow,limit=3,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/punch_crossbows_branch

scoreboard players set $ranged punch 0

#Debug Message
tellraw @a[tag=debug,scores={punch=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Punch (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]