execute if score $ranged ca.ov_tier matches 1.. run scoreboard players set @s ca.lifetime 1

execute if score $ranged ca.ov_tier matches 2 run scoreboard players set @s ca.ov_tier 2
execute if score $ranged ca.ov_tier matches 3 run scoreboard players set @s ca.ov_tier 3
execute if score $ranged ca.ov_tier matches 4 run scoreboard players set @s ca.ov_tier 4

execute as @s[scores={ca.ov_tier=2..}] store result score @s ca.ov_dmg run data get entity @s damage 10

scoreboard players operation $mul ca.ov_dmg = @s ca.ov_dmg
scoreboard players operation $mul_2x ca.ov_dmg = @s ca.ov_dmg
scoreboard players operation $mul_3x ca.ov_dmg = @s ca.ov_dmg

scoreboard players operation $mul ca.ov_dmg /= $2 ca.CONSTANT
scoreboard players operation $mul_2x ca.ov_dmg /= $2 ca.CONSTANT
scoreboard players operation $mul_3x ca.ov_dmg /= $2 ca.CONSTANT

scoreboard players operation $mul_2x ca.ov_dmg += $mul ca.ov_dmg
scoreboard players operation $mul_3x ca.ov_dmg += $mul_2x ca.ov_dmg

execute as @s[scores={ca.ov_tier=2}] store result entity @s damage double 0.1 run scoreboard players operation @s ca.ov_dmg += $mul ca.ov_dmg
execute as @s[scores={ca.ov_tier=3}] store result entity @s damage double 0.1 run scoreboard players operation @s ca.ov_dmg += $mul_2x ca.ov_dmg
execute as @s[scores={ca.ov_tier=4}] store result entity @s damage double 0.1 run scoreboard players operation @s ca.ov_dmg += $mul_3x ca.ov_dmg

scoreboard players operation $ranged ca.ov_dmg = @s ca.ov_dmg

execute if score $ranged ca.ov_tier matches 1.. run tag @s add custom_arrow