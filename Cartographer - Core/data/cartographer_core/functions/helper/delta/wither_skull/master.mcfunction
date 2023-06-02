scoreboard players set $skull_exists ca.var 2

execute on vehicle if entity @s[type=wither_skull] run scoreboard players set $skull_exists ca.var 1

execute if score $skull_exists ca.var matches 2 run function cartographer_core:helper/delta/wither_skull/explode