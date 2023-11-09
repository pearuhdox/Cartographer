scoreboard players remove @s ca.hunger_count 1

particle minecraft:damage_indicator ~ ~ ~ 0.35 0.15 0.35 0.2 8 normal
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.35 0.15 0.35 1 15 normal
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.35 0.15 0.35 1 20 normal

execute as @a[tag=ca.hungry_victim] at @s run function cartographer_loot_additions:hungry_chest/consume

playsound minecraft:entity.warden.heartbeat block @a[distance=..12] ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.eat block @a[distance=..12] ~ ~ ~ 1 0.75
playsound minecraft:entity.evoker_fangs.attack block @a[distance=..12] ~ ~ ~ 1 0.6

scoreboard players operation $hunger_calc_cur ca.loot_var = @s ca.hunger_total
scoreboard players operation $hunger_calc_cur ca.loot_var -= @s ca.hunger_count

scoreboard players operation $hunger_calc_cur ca.loot_var *= $100 ca.CONSTANT

scoreboard players operation $hunger_calc_cur ca.loot_var /= @s ca.hunger_total

execute if score $hunger_calc_cur ca.loot_var matches ..24 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤❤❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'

execute if score $hunger_calc_cur ca.loot_var matches 25..49 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤","color":"dark_red","italic":false},{"text":"❤❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $hunger_calc_cur ca.loot_var matches 50..74 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤❤","color":"dark_red","italic":false},{"text":"❤❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $hunger_calc_cur ca.loot_var matches 75..99 on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤❤❤","color":"dark_red","italic":false},{"text":"❤","color":"dark_gray","italic":false},{"text":"]","color":"dark_gray","italic":false}]'
execute if score $hunger_calc_cur ca.loot_var matches 100.. on passengers on passengers run data modify entity @s text set value '[{"text":"[","color":"gray","italic":false},{"text":"❤❤❤❤","color":"dark_red","italic":false},{"text":"]","color":"dark_gray","italic":false}]'


scoreboard players set @s ca.hunger_time 30

execute if score @s ca.hunger_count matches 0 run scoreboard players add @s ca.loot_timer 1