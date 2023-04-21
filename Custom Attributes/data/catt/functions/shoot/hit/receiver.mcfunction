execute if score $was_arrow catt.var matches 1.. at @s as @e[type=#cartographer_core:projectile,limit=1,sort=nearest,distance=..3] at @s run function catt:shoot/hit/get_damage

execute if score $was_trident catt.var matches 1.. run scoreboard players remove $proj_dmg catt.var 8
execute if score $was_trident catt.var matches 1.. if score $proj_dmg catt.var matches ..-1 run scoreboard players set $proj_dmg catt.var 0

execute if score $was_arrow catt.var matches 1.. at @s run function catt:shoot/hit/do_damage

scoreboard players set $was_arrow catt.var 0
scoreboard players set $was_trident catt.var 0