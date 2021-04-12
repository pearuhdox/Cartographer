execute if score $melee overload matches 1.. run execute as @s at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute if score $melee overload matches 1 run scoreboard players set @s effect_shocked 3
execute if score $melee overload matches 2 run scoreboard players set @s effect_shocked 5
execute if score $melee overload matches 3 run scoreboard players set @s effect_shocked 7