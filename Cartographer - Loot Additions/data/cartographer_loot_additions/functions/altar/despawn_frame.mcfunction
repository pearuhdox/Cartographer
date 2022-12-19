scoreboard players operation $item_count ca.frame_count = @s ca.frame_count

execute as @e[type=item,distance=..2,limit=1,tag=!ca.item_processed,sort=nearest] at @s run function cartographer_loot_additions:loop/tick/item_pop

scoreboard players reset @s ca.frame_count


stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item

playsound minecraft:entity.warden.dig block @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.shulker_bullet.hit block @a[distance=..16] ~ ~ ~ 1 1.5

particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 3 force

particle minecraft:poof ~ ~-1 ~ 0.35 0 0.35 0.0 15 normal

particle minecraft:block minecraft:sculk ~ ~ ~ 0.15 0.35 0.15 0.1 50 normal
particle minecraft:block minecraft:sculk ~ ~-0.6 ~ 0.35 0.15 0.35 0.1 50 normal

setblock ~ ~-0.5 ~ air replace

kill @s