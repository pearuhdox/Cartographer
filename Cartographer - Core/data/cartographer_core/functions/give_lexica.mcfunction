tag @s add used_lexica
loot give @s mine 4206900 5 4206900 air{drop_contents:1b}
scoreboard players set @s lexica 0
execute if score @s lexica matches 1.. run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1