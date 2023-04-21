execute store result entity @e[type=item,sort=nearest,tag=!count_frames.processed,limit=1,distance=..2] Item.Count byte 1 run scoreboard players add @s count_frames.count 0


scoreboard players reset @s count_frames.count
tag @s remove count_frames.filled