scoreboard players operation $item_count ca.frame_count = @s ca.frame_count

execute as @e[type=item,distance=..2,limit=1,tag=!ca.item_processed,sort=nearest] at @s run function cartographer_loot_additions:loop/tick/item_pop

scoreboard players reset @s ca.frame_count

stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item

setblock ~ ~-0.5 ~ air replace

execute as @e[type=villager,tag=multichoice_core,distance=..2,sort=nearest,limit=1] at @s run function cartographer_loot_additions:multichoice/despawn