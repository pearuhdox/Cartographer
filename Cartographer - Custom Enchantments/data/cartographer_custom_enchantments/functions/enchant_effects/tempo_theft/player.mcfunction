execute if score $tempo_theft ca.var matches 1 run scoreboard players set @s ca.temp_level 1
execute if score $tempo_theft ca.var matches 2 run scoreboard players set @s ca.temp_level 2
execute if score $tempo_theft ca.var matches 3 run scoreboard players set @s ca.temp_level 3
execute if score $tempo_theft ca.var matches 4 run scoreboard players set @s ca.temp_level 4
execute if score $tempo_theft ca.var matches 5 run scoreboard players set @s ca.temp_level 5
execute if score $tempo_theft ca.var matches 6 run scoreboard players set @s ca.temp_level 6
execute if score $tempo_theft ca.var matches 7 run scoreboard players set @s ca.temp_level 7
execute if score $tempo_theft ca.var matches 8 run scoreboard players set @s ca.temp_level 8
execute if score $tempo_theft ca.var matches 9 run scoreboard players set @s ca.temp_level 9
execute if score $tempo_theft ca.var matches 10.. run scoreboard players set @s ca.temp_level 10

execute unless score @s ca.temp_warp matches 1.. run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 12 normal
execute unless score @s ca.temp_warp matches 1.. run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

execute if score $new_hit ca.tempo_theft matches 1.. if score $tempo_theft ca.var matches 1.. unless score $melee ca.tempo_theft matches 1.. run scoreboard players set @s ca.temp_warp 160
execute if score $new_hit ca.tempo_theft matches 1.. if score $tempo_theft ca.var matches 1.. if score $melee ca.tempo_theft matches 1.. run scoreboard players set @s ca.temp_warp 80

execute unless score $new_hit ca.tempo_theft matches 1.. run scoreboard players add @s ca.temp_warp 21


function #minecraft:cartographer/events/enchantments/ranged/tempo_theft

scoreboard players set $melee ca.tempo_theft 0
scoreboard players set $new_hit ca.tempo_theft 0