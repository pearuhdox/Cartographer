scoreboard players add @s ca.loyalty_time 30

execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 1
execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5
execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 2

execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:block.bubble_column.upwards_inside player @s ~ ~ ~ 1.5 1