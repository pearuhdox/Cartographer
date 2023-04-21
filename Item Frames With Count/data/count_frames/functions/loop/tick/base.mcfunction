#Run Targeted Effects
execute as @e[type=#count_frames:tracked_entities] at @s run function count_frames:loop/tick/entity
execute as @a at @s run function count_frames:loop/tick/player