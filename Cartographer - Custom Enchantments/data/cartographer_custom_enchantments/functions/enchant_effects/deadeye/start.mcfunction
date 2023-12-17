scoreboard players operation @s ca.raycast = $range ca.deadeye
scoreboard players set $visible ca.deadeye 0
execute anchored eyes positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast

execute if score $multishot ca.deadeye matches 1.. run scoreboard players operation @s ca.raycast = $range ca.deadeye
execute if score $multishot ca.deadeye matches 1.. run scoreboard players set $visible ca.deadeye 0
execute if score $multishot ca.deadeye matches 1.. run scoreboard players operation $piercing_ct ca.deadeye = $piercing ca.deadeye
execute if score $multishot ca.deadeye matches 1.. anchored eyes positioned ^ ^ ^1 facing ^-1.7 ^ ^5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast

execute if score $multishot ca.deadeye matches 1.. run scoreboard players operation @s ca.raycast = $range ca.deadeye
execute if score $multishot ca.deadeye matches 1.. run scoreboard players set $visible ca.deadeye 0
execute if score $multishot ca.deadeye matches 1.. run scoreboard players operation $piercing_ct ca.deadeye = $piercing ca.deadeye
execute if score $multishot ca.deadeye matches 1.. anchored eyes positioned ^ ^ ^1 facing ^1.7 ^ ^5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast