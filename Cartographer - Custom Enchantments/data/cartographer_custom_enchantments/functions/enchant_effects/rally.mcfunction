execute unless score @s ca.rally_time matches 1.. run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 0.8

scoreboard players operation @s ca.rally_time = @s ca.rally

scoreboard players operation @s ca.rally_time *= $20 ca.CONSTANT

scoreboard players add @s ca.rally_time 21

tag @s add ca.rallied

execute if score @s ca.rally_time matches 1.. run scoreboard players set @s ca.ral_charge 0