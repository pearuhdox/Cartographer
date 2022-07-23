playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2

execute if score @s ca.evocation matches 1 run scoreboard players set @s ca.evo_burn 70
execute if score @s ca.evocation matches 2 run scoreboard players set @s ca.evo_burn 40
execute if score @s ca.evocation matches 3.. run scoreboard players set @s ca.evo_burn 20