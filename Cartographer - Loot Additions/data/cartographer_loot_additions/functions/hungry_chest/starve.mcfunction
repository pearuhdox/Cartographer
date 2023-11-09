scoreboard players add @s ca.hunger_count 1

playsound minecraft:entity.warden.angry block @a[distance=..12] ~ ~ ~ 0.4 2

particle minecraft:damage_indicator ~ ~ ~ 0.35 0.15 0.35 0.2 4 normal
particle minecraft:dust 0.2 0 0 1 ~ ~ ~ 0.35 0.15 0.35 1 8 normal
particle minecraft:block minecraft:black_terracotta ~ ~ ~ 0.35 0.15 0.35 1 12 normal


scoreboard players operation $hunger_calc_cur ca.loot_var = @s ca.hunger_total
scoreboard players operation $hunger_calc_cur ca.loot_var -= @s ca.hunger_count

scoreboard players operation $hunger_calc_cur ca.loot_var *= $100 ca.CONSTANT

scoreboard players operation $hunger_calc_cur ca.loot_var /= @s ca.hunger_total

execute if score $hunger_calc_cur ca.loot_var matches ..24 on passengers on passengers run data modify entity @s text set value '[{"text":"Starving... ","color":"red","italic":false},{"text":"[","color":"gray","italic":false},{"text":"❤❤❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'

execute if score $hunger_calc_cur ca.loot_var matches 25..49 on passengers on passengers run data modify entity @s text set value '[{"text":"Starving... ","color":"red","italic":false},{"text":"[","color":"gray","italic":false},{"text":"❤","color":"dark_red","italic":false},{"text":"❤❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $hunger_calc_cur ca.loot_var matches 50..74 on passengers on passengers run data modify entity @s text set value '[{"text":"Starving... ","color":"red","italic":false},{"text":"[","color":"gray","italic":false},{"text":"❤❤","color":"dark_red","italic":false},{"text":"❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $hunger_calc_cur ca.loot_var matches 75..99 on passengers on passengers run data modify entity @s text set value '[{"text":"Starving... ","color":"red","italic":false},v{"text":"[","color":"gray","italic":false},{"text":"❤❤❤","color":"dark_red","italic":false},{"text":"❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'

execute unless score @s ca.hunger_count >= @s ca.hunger_total run scoreboard players set @s ca.hunger_time 15

execute if score @s ca.hunger_count >= @s ca.hunger_total on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤❤❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'