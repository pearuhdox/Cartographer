data modify entity @s damage set value 0.0d

scoreboard players operation @s catt.proj_dmg += $damage catt.var

tag @s add catt.is_trident