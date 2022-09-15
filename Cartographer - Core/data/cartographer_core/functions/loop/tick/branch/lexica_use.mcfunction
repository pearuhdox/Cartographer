execute if score @s[gamemode=!creative] ca.lexica_count < $old_lex_count ca.lexica_count run function cartographer_core:give_lexica

execute if entity @s[gamemode=!creative,tag=used_lexica] run function cartographer_core:loop/tick/branch/lexica_use_do
execute if entity @s[gamemode=creative] if predicate cartographer_core:holding_lexica if score @s ca.lexica_count matches 1.. run function cartographer_core:loop/tick/branch/lexica_use_do

scoreboard players set @s ca.use_lex 0
tag @s remove used_lexica