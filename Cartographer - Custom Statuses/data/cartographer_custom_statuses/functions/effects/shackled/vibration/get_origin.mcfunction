execute store result storage cartographer_custom_statuses:shackled_vfx.coordinates x2 int 1 run data get entity @s Pos[0]
execute store result storage cartographer_custom_statuses:shackled_vfx.coordinates y2 int 1 run data get entity @s Pos[1]
execute store result storage cartographer_custom_statuses:shackled_vfx.coordinates z2 int 1 run data get entity @s Pos[2]

execute store result score $shackled_y_chance ca.status_var run data get storage cartographer_custom_statuses:shackled_vfx.coordinates y
execute store result storage cartographer_custom_statuses:shackled_vfx.coordinates y double 1 run scoreboard players add $shackled_y_chance ca.status_var 1