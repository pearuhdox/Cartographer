execute unless score $stop_setup count_frames.count matches 1.. unless entity @s[tag=count_frames.filled] run function count_frames:frames/awaiting

execute if entity @s[tag=count_frames.filled] if score @s count_frames.count matches 2.. unless data entity @s Item.Count run function count_frames:frames/fix_stack