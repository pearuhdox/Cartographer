data modify entity @s AbsorptionAmount set from entity @s Health

execute store result score @s ca.size_min run data get entity @s Size
scoreboard players operation @s ca.size_cur = @s ca.size_min
scoreboard players operation @s ca.size_max = @s ca.size_max

execute store result score @s ca.size_max run data get entity @s Health

execute unless entity @s[tag=ca.growth_faster] unless entity @s[tag=ca.growth_slower] unless entity @s[tag=ca.growth_slowerer] unless entity @s[tag=ca.growth_slowerest] run scoreboard players operation @s ca.size_max /= $7 ca.CONSTANT
execute if entity @s[tag=ca.growth_slower] run scoreboard players operation @s ca.size_max /= $10 ca.CONSTANT
execute if entity @s[tag=ca.growth_slowerer] run scoreboard players operation @s ca.size_max /= $21 ca.CONSTANT
execute if entity @s[tag=ca.growth_slowerest] run scoreboard players operation @s ca.size_max /= $41 ca.CONSTANT
execute if entity @s[tag=ca.growth_faster] run scoreboard players operation @s ca.size_max /= $5 ca.CONSTANT

scoreboard players operation @s ca.size_max += @s ca.size_min


tag @s add size_setup