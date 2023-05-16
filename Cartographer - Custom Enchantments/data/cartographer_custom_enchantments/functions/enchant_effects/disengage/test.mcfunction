execute if score @s ca.disengage_use matches 1.. if predicate cartographer_custom_enchantments:is_sneaking run function cartographer_custom_enchantments:enchant_effects/disengage/use

execute if score @s ca.disengage_time matches 1.. store result score @s ca.disengage_x run data get entity @s Pos[0] 100
execute if score @s ca.disengage_time matches 1.. store result score @s ca.disengage_y run data get entity @s Pos[1] 100
execute if score @s ca.disengage_time matches 1.. store result score @s ca.disengage_z run data get entity @s Pos[2] 100

execute if score @s ca.disengage_time matches 4.. run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.25 1

execute if score @s ca.disengage_time matches 1.. run scoreboard players remove @s ca.disengage_time 1