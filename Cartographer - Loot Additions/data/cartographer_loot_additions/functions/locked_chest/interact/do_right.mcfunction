execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chain.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 0.5
execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chest.close player @a[distance=..16] ~ ~ ~ 1 0.5

execute on vehicle if score @s ca.locked_stage matches 3.. run function cartographer_loot_additions:locked_chest/attempt_unlock

execute on vehicle if score @s ca.locked_stage matches 2 run data modify entity @s item.tag.KeyItem set from entity @p SelectedItem
execute on vehicle if score @s ca.locked_stage matches 2 run tellraw @p {"text":"Chest is now locked!","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
execute on vehicle if score @s ca.locked_stage matches 2 run scoreboard players set @s ca.locked_stage 3

execute on vehicle if score @s ca.locked_stage matches 1 run data modify entity @e[type=block_display,tag=ca.locked_chest_lock,sort=nearest,limit=1] block_state.Name set from entity @p SelectedItem.id
execute on vehicle if score @s ca.locked_stage matches 1 run tellraw @p {"text":"Right Click the locked chest with an item to set the item as a key.","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
execute on vehicle if score @s ca.locked_stage matches 1 run scoreboard players set @s ca.locked_stage 2

data remove entity @s interaction