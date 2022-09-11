data remove storage cartographer_custom_enchantments:loyalty Item.Slot

function cartographer_custom_enchantments:enchant_effects/loyalty/package/calculate_time

scoreboard players set $flag_give ca.loyalty 0

execute if score @s ca.loyalty matches 1..10 run function cartographer_custom_enchantments:enchant_effects/loyalty/package/test_mainhand

execute if score @s ca.loyalty matches 101..110 run function cartographer_custom_enchantments:enchant_effects/loyalty/package/offhand

execute if score $flag_give ca.loyalty matches 1.. if entity @s[gamemode=!spectator,gamemode=!creative] run function cartographer_custom_enchantments:enchant_effects/loyalty/package/give