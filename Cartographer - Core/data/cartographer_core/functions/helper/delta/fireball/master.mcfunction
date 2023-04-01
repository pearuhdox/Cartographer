scoreboard players set $fireball_exists ca.var 2

execute on vehicle if entity @s[type=fireball] run scoreboard players set $fireball_exists ca.var 1

execute if score $fireball_exists ca.var matches 2 run function cartographer_core:helper/delta/fireball/explode