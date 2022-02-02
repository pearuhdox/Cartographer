scoreboard players operation $hydraul ca.tempest = @s ca.tempest
scoreboard players operation $hydraul ca.hydraulic = @s ca.hydraulic

execute if entity @e[type=trident,distance=..3,sort=nearest,limit=1] run function cartographer_custom_enchantments:enchant_effects/hydraulic/trident_branch

scoreboard players set $hydraul ca.tempest 0
scoreboard players set $hydraul ca.hydraulic 0

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Hydraulic.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]