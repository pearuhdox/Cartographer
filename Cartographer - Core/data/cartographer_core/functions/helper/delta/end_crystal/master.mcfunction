scoreboard players set $crystal_exists ca.var 2

execute on vehicle if entity @s[type=end_crystal] run scoreboard players set $crystal_exists ca.var 1

execute if score $crystal_exists ca.var matches 2 run function cartographer_core:helper/delta/end_crystal/explode