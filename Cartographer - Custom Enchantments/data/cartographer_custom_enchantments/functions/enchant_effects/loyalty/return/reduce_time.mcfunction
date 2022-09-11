#Get the duration amount and remove 1
execute store result score $duration ca.loyalty run data get storage cartographer_custom_enchantments:loyalty_inventory Temp.tag.DurationRemaining
scoreboard players remove $duration ca.loyalty 1

scoreboard players set $slot ca.loyalty -1000

execute if score $duration ca.loyalty matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/return/pass_back_time
execute if score $duration ca.loyalty matches ..0 run function cartographer_custom_enchantments:enchant_effects/loyalty/return/return_trident