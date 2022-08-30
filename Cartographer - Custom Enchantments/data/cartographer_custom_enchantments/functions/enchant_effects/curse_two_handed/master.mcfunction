execute if score @s ca.curse_two_hnd matches 1.. unless score @s ca.two_hand_time matches 10.. run scoreboard players add @s ca.two_hand_time 1

execute if score @s ca.two_hand_time matches 10 if data entity @s Inventory[{Slot:-106b}] unless data entity @s Inventory[{Slot:-106b}].tag.Compressed run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/package