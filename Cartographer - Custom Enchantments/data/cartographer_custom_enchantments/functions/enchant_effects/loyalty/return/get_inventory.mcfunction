scoreboard players set $more_waiting ca.loyalty 0

data modify storage cartographer_custom_enchantments:loyalty_inventory Inventory set from entity @s Inventory

function cartographer_custom_enchantments:enchant_effects/loyalty/return/recurse

scoreboard players remove @s ca.loyalty_time 5

execute if score $more_waiting ca.loyalty matches 1.. if score @s ca.loyalty_time matches ..0 run scoreboard players add @s ca.loyalty_time 1
execute unless score $more_waiting ca.loyalty matches 1.. if score @s ca.loyalty_time matches ..0 run scoreboard players set @s ca.loyalty_time -1