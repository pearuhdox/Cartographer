scoreboard players operation $ranged ca.power = @s ca.power

execute if score @s ca.power matches 1.. as @e[type=arrow,limit=3,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows/branch

scoreboard players set $ranged ca.power 0

#Debug Message
tellraw @a[tag=debug,scores={ca.power=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Power (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]