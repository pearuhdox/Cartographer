#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

scoreboard players operation $temp ca.var = @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.bleed
scoreboard players operation $temp ca.var += @s ca.electrode
scoreboard players operation $temp ca.var += @s ca.frost
scoreboard players operation $temp ca.var += @s ca.expose
scoreboard players operation $temp ca.var += @s ca.possess
scoreboard players operation $temp ca.var += @s ca.infect
scoreboard players operation $temp ca.var += @s ca.flash
scoreboard players operation $temp ca.var += @s ca.explosive
scoreboard players operation $temp ca.var += @s ca.tempo_theft
scoreboard players operation $temp ca.var += @s ca.flame
scoreboard players operation $temp ca.var += @s ca.punch
execute if score $temp ca.var matches 1.. at @s as @e[type=#bb:arrow,limit=3,distance=..7,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/branch/set_custom_arrow
