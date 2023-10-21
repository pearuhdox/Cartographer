#High Voltage Shocks do CC. High Voltage happens every 3 seconds of charge. Additional power gained in Water.
#Voltage is charged always on the primary shocked enemy and that controls the group effect
scoreboard players add @s ca.voltage_shocked 2
execute if block ~ ~ ~ water run scoreboard players add @s ca.voltage_shocked 1

scoreboard players operation $shocked_volts ca.var = @s ca.voltage_shocked

execute unless score $shocked_volts ca.var matches 6.. run function cartographer_custom_statuses:effects/shocked/low_voltage
execute if score $shocked_volts ca.var matches 6.. run function cartographer_custom_statuses:effects/shocked/high_voltage


execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~1 ~ 0.2 0.4 0.2 0 16 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~0.5 ~ 0.4 0.1 0.4 0 16 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~0.25 ~ 0.25 0.1 0.25 0 10 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~1 ~ 1 0.4 1 0 40 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 0.1 8 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:wax_off ~ ~0.5 ~ 0.4 0.1 0.4 0.1 8 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:wax_off ~ ~0.25 ~ 0.25 0.1 0.25 0.1 5 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:wax_off ~ ~1 ~ 1 0.4 1 0.1 15 normal

execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:popup/shock

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Shocked.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
