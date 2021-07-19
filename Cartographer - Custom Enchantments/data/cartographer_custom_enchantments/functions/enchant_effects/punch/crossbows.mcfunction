scoreboard players set $ranged ca.punch 0

scoreboard players operation $ranged ca.punch = @s ca.punch

execute if score @s ca.punch matches 1.. as @e[type=arrow,limit=3,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows_branch


#Debug Message
tellraw @a[tag=debug,scores={ca.punch=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Punch (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]