execute if score $melee ca.infection matches 1.. run particle minecraft:dust 0.1 0 0 0.25 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if score $melee ca.infection matches 1 run scoreboard players set @s ca.effect_infect 3
execute if score $melee ca.infection matches 2 run scoreboard players set @s ca.effect_infect 5
execute if score $melee ca.infection matches 3 run scoreboard players set @s ca.effect_infect 7