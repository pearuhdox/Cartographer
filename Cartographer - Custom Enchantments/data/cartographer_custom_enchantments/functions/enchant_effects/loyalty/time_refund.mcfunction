scoreboard players add @s ca.loyalty_time 30

scoreboard players add @s ca.loyalty_refund_cooldown 40

execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 0.5 1
execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 0.5 0.5
execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 0.5 2

execute unless score $current_return ca.loyalty matches 1.. at @s run playsound minecraft:block.bubble_column.upwards_inside player @s ~ ~ ~ 0.75 1