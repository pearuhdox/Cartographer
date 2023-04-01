scoreboard players remove @s ca.soul_count 1

particle minecraft:sculk_soul ~ ~1.25 ~ 0.1 0.1 0.1 0.02 8 normal
particle minecraft:sculk_soul ~ ~1.65 ~ 0.25 0.15 0.25 0.01 15 normal

execute unless score @s ca.soul_count matches 0 run function cartographer_loot_additions:soul_chest/not_full

particle minecraft:sculk_charge 0 ~ ~0.5 ~ 0.35 0.35 0.35 0 20 normal

execute if score @s ca.soul_count matches 0 run scoreboard players add @s ca.loot_timer 1
execute if score @s ca.soul_count matches 0 run playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.75 0.75
execute if score @s ca.soul_count matches 0 run particle minecraft:sculk_charge 0 ~ ~0.5 ~ 0.35 0.35 0.35 0 20 normal

scoreboard players operation $soul_calc_cur ca.loot_var = @s ca.soul_total
scoreboard players operation $soul_calc_cur ca.loot_var -= @s ca.soul_count

scoreboard players operation $soul_calc_cur ca.loot_var *= $100 ca.CONSTANT

scoreboard players operation $soul_calc_cur ca.loot_var /= @s ca.soul_total

execute if score $soul_calc_cur ca.loot_var matches ..24 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"☠☠☠☠","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'

execute if score $soul_calc_cur ca.loot_var matches 25..49 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"☠","color":"aqua","italic":false},{"text":"☠☠☠","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $soul_calc_cur ca.loot_var matches 50..74 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"☠☠","color":"aqua","italic":false},{"text":"☠☠","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $soul_calc_cur ca.loot_var matches 75..99 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"☠☠☠","color":"aqua","italic":false},{"text":"☠","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $soul_calc_cur ca.loot_var matches 100.. on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"☠☠☠☠","color":"aqua","italic":false},{"text":"]","color":"dark_gray","italic":false}]'


scoreboard players set @a[distance=..16] ca.get_soul 0