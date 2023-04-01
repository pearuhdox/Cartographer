execute as @s[type=wither_skeleton,tag=ca.active_mimic] at @s run function cartographer_mimics:loop/tick/wither_branch

execute as @s[tag=active_colossus,tag=!done_dupe] at @s run function cartographer_mimics:loop/tick/colossus_branch

execute as @s[type=bee,tag=active_colossus] at @s run data modify entity @s AngerTime set value 2147483647
