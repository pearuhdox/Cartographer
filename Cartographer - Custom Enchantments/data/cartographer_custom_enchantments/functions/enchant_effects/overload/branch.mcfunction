execute if score $melee ca.overload matches 1.. run particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.5 10 normal

execute if score $melee ca.overload matches 1 run scoreboard players set @s ca.effect_shock 3
execute if score $melee ca.overload matches 2 run scoreboard players set @s ca.effect_shock 5
execute if score $melee ca.overload matches 3 run scoreboard players set @s ca.effect_shock 7