execute if entity @a[scores={regeneration=1..}] as @a[scores={regeneration=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/regeneration
execute if entity @a[scores={helper_heal_bank=100..}] as @a[scores={helper_heal_bank=100..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/heal_bank

execute if entity @a[scores={second_wind=1..}] as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_charge

function cartographer_custom_enchantments:loop/1_second/reset

schedule function cartographer_custom_enchantments:loop/1_second/base 1s