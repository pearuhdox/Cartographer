scoreboard players operation $ranged ca.power = $power ca.var

execute if score $power ca.var matches 1.. as @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows/branch

scoreboard players set $ranged ca.power 0

#Debug Message
tellraw @a[tag=debug,scores={ca.power=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Power (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]