execute unless entity @a[distance=..13] unless entity @a[distance=..7] run scoreboard players operation $proj_change_x ca.var *= $65 ca.CONSTANT
execute unless entity @a[distance=..13] unless entity @a[distance=..7] run scoreboard players operation $proj_change_z ca.var *= $65 ca.CONSTANT

execute if entity @a[distance=10.01..13] unless entity @a[distance=..7] run scoreboard players operation $proj_change_x ca.var *= $50 ca.CONSTANT
execute if entity @a[distance=10.01..13] unless entity @a[distance=..7] run scoreboard players operation $proj_change_z ca.var *= $50 ca.CONSTANT

execute if entity @a[distance=7.01..10] run scoreboard players operation $proj_change_x ca.var *= $40 ca.CONSTANT
execute if entity @a[distance=7.01..10] run scoreboard players operation $proj_change_z ca.var *= $40 ca.CONSTANT

execute if entity @a[distance=..7] run scoreboard players operation $proj_change_x ca.var *= $15 ca.CONSTANT
execute if entity @a[distance=..7] run scoreboard players operation $proj_change_z ca.var *= $15 ca.CONSTANT

scoreboard players operation $proj_change_x ca.var /= $100 ca.CONSTANT
scoreboard players operation $proj_change_z ca.var /= $100 ca.CONSTANT

execute if score $proj_change_y ca.var matches ..799 run scoreboard players set $proj_change_y ca.var 800
