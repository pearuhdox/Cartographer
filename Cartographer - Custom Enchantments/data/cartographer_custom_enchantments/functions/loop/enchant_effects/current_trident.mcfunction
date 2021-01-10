execute at @s run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run tag @s add current_drag
execute at @s run tp @e[tag=current_drag] ~ ~ ~
scoreboard players set @e[tag=current_drag] effect_stunned 10
execute at @s[scores={helper_lifetime=6..}] run scoreboard players set @a[distance=..6] ca.ce.cur_spd 10