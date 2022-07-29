#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags (trident).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

scoreboard players operation $temp ca.var = @s ca.tempest
scoreboard players operation $temp ca.var += @s ca.ricochet
scoreboard players operation $temp ca.var += @s ca.current
scoreboard players operation $temp ca.var += @s ca.duelist
scoreboard players operation $temp ca.var += @s ca.hunter
scoreboard players operation $temp ca.var += @s ca.singe
scoreboard players operation $temp ca.var += @s ca.frostbite
scoreboard players operation $temp ca.var += @s ca.exposing
scoreboard players operation $temp ca.var += @s ca.stunning
scoreboard players operation $temp ca.var += @s ca.infection
scoreboard players operation $temp ca.var += @s ca.electrocute
scoreboard players operation $temp ca.var += @s ca.bleeding
scoreboard players operation $temp ca.var += @s ca.fire_aspect
scoreboard players operation $temp ca.var += @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.possession
scoreboard players operation $temp ca.var += @s ca.loyalty
execute if score $temp ca.var matches 1.. at @s as @e[type=trident,limit=1,distance=..7,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/branch/set_custom_trident
