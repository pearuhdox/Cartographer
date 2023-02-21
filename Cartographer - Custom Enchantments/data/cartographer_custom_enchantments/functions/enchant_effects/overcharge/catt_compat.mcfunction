execute if score @s ca.ov_tier matches 2.. run scoreboard players operation @s catt.proj_dmg += $damage catt.var
execute if score @s ca.ov_tier matches 3.. run scoreboard players operation @s catt.proj_dmg += $damage catt.var
execute if score @s ca.ov_tier matches 4.. run scoreboard players operation @s catt.proj_dmg += $damage catt.var

data modify entity @s damage set value 0.0d