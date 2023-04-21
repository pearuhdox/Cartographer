execute if entity @s[type=#count_frames:item_frames] run function count_frames:loop/tick/frame_branch

execute if entity @s[type=item,tag=!count_frames.processed] run function count_frames:loop/tick/item_branch