execute unless entity @s[tag=showing_repeating] if score @s ca.repeating matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/repeating

execute unless entity @s[tag=showing_echo] if score @s ca.echo matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/echo

execute unless entity @s[tag=showing_evocation] if score @s ca.evocation matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/evocation

execute unless entity @s[tag=showing_sweeping] if score @s ca.sweeping matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/sweeping

execute unless entity @s[tag=showing_thrusting] if score @s ca.thrusting matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/thrusting

execute unless entity @s[tag=showing_slamming] if score @s ca.slamming matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/slamming

execute if score @s ca.sw_time matches 1.. run function cartographer_custom_enchantments:helper/indicators/subtitle/second_wind