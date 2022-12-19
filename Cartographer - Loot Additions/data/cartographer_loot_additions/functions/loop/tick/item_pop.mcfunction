execute unless block ~ ~ ~ #cartographer_core:watery run data merge entity @s {Motion:[0.0,0.3,0.0],PickupDelay:0}
execute if block ~ ~ ~ #cartographer_core:watery run data merge entity @s {Motion:[0.0,-0.1,0.0],PickupDelay:0}

execute if score $item_count ca.frame_count matches 2.. store result entity @s Item.Count byte 1 run scoreboard players add $item_count ca.frame_count 0

scoreboard players set $item_count ca.frame_count 0