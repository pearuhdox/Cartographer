data modify entity @s Item.tag.StoredTrident set from storage cartographer_custom_enchantments:loyalty Item

execute store result entity @s Item.tag.DurationRemaining int 1 run scoreboard players add $recall_time ca.loyalty 2