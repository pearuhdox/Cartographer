# UUID 31182015-1215-1520-8514-2185111
# [I;823664661,303371552,-2062286848,35148049]

tp 31182015-1215-1520-8514-2185111 ~ ~ ~

scoreboard players set $valid ca.break_head_look_time 0

scoreboard players add $pings ca.break_head_look_time 1


execute align xyz positioned ~-0.25 ~-0.5 ~-0.25 as 31182015-1215-1520-8514-2185111 if entity @s[dx=0,dy=0,dz=0] run scoreboard players add $valid ca.break_head_look_time 1
execute align xyz positioned ~0.25 ~ ~0.25 as 31182015-1215-1520-8514-2185111 if entity @s[dx=0,dy=0,dz=0] run scoreboard players add $valid ca.break_head_look_time 1

execute if score $valid ca.break_head_look_time matches 2.. run scoreboard players set $found ca.break_head_look_time 1

execute if score $found ca.break_head_look_time matches 1.. run scoreboard players set @s ca.raycast 0