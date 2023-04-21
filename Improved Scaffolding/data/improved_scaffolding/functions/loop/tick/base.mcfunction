#Run Targeted Effects
execute as @e[type=#improved_scaffolding:tracked_entities] at @s run function improved_scaffolding:loop/tick/entity
execute as @a at @s run function improved_scaffolding:loop/tick/player

execute if score $check_falling ims.var matches 1.. run scoreboard players remove $check_falling ims.var 1