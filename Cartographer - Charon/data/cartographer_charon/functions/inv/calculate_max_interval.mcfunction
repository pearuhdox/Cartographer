scoreboard players set $max_rand_interval dt.var 5
execute store result score $inv_size dt.var if data storage inv:main inv.all[]
scoreboard players operation $inv_size dt.var /= 9 dt.var
scoreboard players operation $max_rand_interval dt.var += $inv_size dt.var