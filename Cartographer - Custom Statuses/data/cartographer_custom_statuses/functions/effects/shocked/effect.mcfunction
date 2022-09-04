#High Voltage Shocks do CC. High Voltage happens every 3 seconds of charge. Additional power gained in Water.
#Voltage is charged always on the primary shocked enemy and that controls the group effect
scoreboard players add @s ca.voltage_shocked 2
execute if block ~ ~ ~ water run scoreboard players add @s ca.voltage_shocked 1

scoreboard players operation $shocked_volts ca.var = @s ca.voltage_shocked

execute unless score $shocked_volts ca.var matches 6.. run function cartographer_custom_statuses:effects/shocked/low_voltage
execute if score $shocked_volts ca.var matches 6.. run function cartographer_custom_statuses:effects/shocked/high_voltage


particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal
scoreboard players remove @s ca.effect_shock 1

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Shocked.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
