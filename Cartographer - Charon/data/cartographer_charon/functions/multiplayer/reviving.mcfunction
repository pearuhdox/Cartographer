scoreboard players add @s ca.revive_time 1

effect clear @s invisibility

particle minecraft:cloud ~ ~-0.35 ~ 0.1 0.1 0.1 0.05 1 normal

execute if score @s ca.revive_time matches 1 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 10 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"R","color":"aqua","italic":false},{"text":"eviving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 20 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Re","color":"aqua","italic":false},{"text":"viving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 30 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Rev","color":"aqua","italic":false},{"text":"iving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 40 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Revi","color":"aqua","italic":false},{"text":"ving...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 50 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Reviv","color":"aqua","italic":false},{"text":"ing...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 60 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Revivi","color":"aqua","italic":false},{"text":"ng...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 70 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Revivin","color":"aqua","italic":false},{"text":"g...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 80 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving","color":"aqua","italic":false},{"text":"...","color":"dark_gray","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 90 run data modify entity @s CustomName set value '[{"text":"[","color":"white","italic":false},{"text":"Reviving...","color":"aqua","italic":false},{"text":"]","color":"white","italic":false}]'

execute if score @s ca.revive_time matches 100.. run function cartographer_charon:multiplayer/do_revive