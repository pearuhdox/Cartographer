execute if score $ranged ca.ov_tier matches 1.. run scoreboard players set @s ca.lifetime 1

scoreboard players operation @s ca.ov_tier = $ranged ca.ov_tier

execute store result score @s ca.ov_dmg run data get entity @s damage 100

scoreboard players operation $mul ca.ov_dmg = @s ca.ov_tier
scoreboard players operation $mul ca.ov_dmg *= $17 ca.CONSTANT
scoreboard players operation $mul ca.ov_dmg += $100 ca.CONSTANT

scoreboard players operation @s ca.ov_dmg *= $mul ca.ov_dmg
scoreboard players operation @s ca.ov_dmg /= $100 ca.CONSTANT


execute if score @s ca.ov_tier matches 1.. store result entity @s damage double 0.01 run scoreboard players get @s ca.ov_dmg

scoreboard players operation $ranged ca.ov_dmg = @s ca.ov_dmg

execute if score $ranged ca.ov_tier matches 1.. run tag @s add custom_arrow