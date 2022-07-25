# Make sure the entity doesn't break the motion system

tag @s add co_pushed

scoreboard players add @s co_x 0
scoreboard players add @s co_y 0
scoreboard players add @s co_z 0
scoreboard players add @s co_pitch 0
scoreboard players add @s co_yaw 0
scoreboard players add @s co_send 0

# Check the type of rotation to perform

execute at @s[tag=!co_rotation_lock] if entity @a[tag=co_target_player] facing entity @p[tag=co_target_player] feet run function motion:motion/change/x
execute at @s[tag=!co_rotation_lock] unless entity @a[tag=co_target_player] facing entity @p feet run function motion:motion/change/x
execute at @s[tag=co_rotation_lock] rotated as @s run function motion:motion/change/x

# Run the calculation

execute at @s run function motion:motion/get

# Reset the entity scores

scoreboard players set @s co_x 0
scoreboard players set @s co_y 0
scoreboard players set @s co_z 0
scoreboard players set @s co_pitch 0
scoreboard players set @s co_yaw 0
scoreboard players set @s co_send 0

tag @s remove co_pushed

