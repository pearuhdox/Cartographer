effect give @e[type=#cartographer_core:hostile,distance=..8] minecraft:blindness 3 0
execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run function cartographer_core:helper/push_half

playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

execute if entity @s[scores={second_wind=1..},tag=bracing] run function cartographer_custom_enchantments:enchant_effects/second_wind

execute if entity @s[scores={second_wind=1..,second_wind_cool=..240},tag=!bracing] run scoreboard players add @s second_wind_cool 10

#For DE, Resolved's Bonus Item - Removed in next patch.
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Hivemind:1}}]}] run effect clear @e[type=#cartographer_core:hostile,distance=..8,sort=nearest,limit=1] blindness
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Hivemind:1}}]}] run team leave @e[type=#cartographer_core:hostile,distance=..12]
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Hivemind:1}}]}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8,sort=nearest,limit=1] effect_rage 21

tag @s remove evading
tag @s remove bracing

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Evasion.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]