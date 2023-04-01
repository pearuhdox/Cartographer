scoreboard players add @s ca.revive_time 1

execute unless score @s ca.is_reviving matches 1.. run playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 3 0.85

effect clear @s invisibility

particle minecraft:cloud ~ ~-0.6 ~ 0.1 0.1 0.1 0.05 1 normal

execute if score @s ca.revive_time matches 1 on passengers run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,0.000f,0.000f, 0.700f, 0.000f,-0.850f,0.000f, 0.000f, 0.700f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

execute if score @s ca.revive_time matches 1 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 3 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"R","color":"aqua","italic":false},{"text":"eviving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 5 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Re","color":"aqua","italic":false},{"text":"viving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 7 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Rev","color":"aqua","italic":false},{"text":"iving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 9 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Revi","color":"aqua","italic":false},{"text":"ving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 11 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Reviv","color":"aqua","italic":false},{"text":"ing...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 13 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Revivi","color":"aqua","italic":false},{"text":"ng...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 15 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Revivin","color":"aqua","italic":false},{"text":"g...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 17 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving","color":"aqua","italic":false},{"text":"...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 19 on passengers run data modify entity @s text set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving...","color":"aqua","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 20.. run function cartographer_charon:multiplayer/do_revive

scoreboard players set @s ca.is_reviving 45