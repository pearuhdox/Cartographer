scoreboard players set @s ca.luck_coeff 0
scoreboard players set @s ca.luck+ 0
scoreboard players set @s ca.luck- 0

execute store result score @s ca.luck_coeff run attribute @s minecraft:generic.luck get

execute if score @s ca.luck_coeff matches ..-1 run scoreboard players operation @s ca.luck- = @s ca.luck_coeff
execute if score @s ca.luck_coeff matches ..-1 run scoreboard players operation @s ca.luck- *= $-1 ca.CONSTANT

execute if score @s ca.luck_coeff matches 1.. run scoreboard players operation @s ca.luck+ = @s ca.luck_coeff
