execute as @a[scores={regeneration=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/regeneration
execute as @a[scores={helper_heal_bank=100..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/heal_bank

execute as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_charge

execute as @e[type=#cartographer_core:hostile,distance=..160,nbt={ActiveEffects:[{Id:9b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_arrow_effect
execute as @e[type=#cartographer_core:hostile,distance=..160,nbt={ActiveEffects:[{Id:30b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_arrow_effect

function cartographer_custom_enchantments:loop/1_second/reset

schedule function cartographer_custom_enchantments:loop/1_second/base 1s