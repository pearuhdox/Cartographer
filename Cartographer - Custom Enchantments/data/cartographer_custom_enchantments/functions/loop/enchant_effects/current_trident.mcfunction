execute at @s run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run tag @s add current_drag
execute at @s run tp @e[tag=current_drag] ~ ~ ~
execute at @s run effect give @a[distance=..6] haste 1 9 true