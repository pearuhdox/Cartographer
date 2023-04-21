data modify entity @s damage set value 0.0d

scoreboard players operation $damage catt.var *= $draw_time catt.var
scoreboard players operation $damage catt.var /= $100 catt.var

scoreboard players operation @s catt.proj_dmg += $damage catt.var