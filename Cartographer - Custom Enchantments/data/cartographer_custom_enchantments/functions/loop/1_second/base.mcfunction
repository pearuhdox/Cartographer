execute if entity @a[scores={regeneration=1..}] as @a[scores={regeneration=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/regeneration
execute if entity @a[scores={helper_heal_bank=100..}] as @a[scores={helper_heal_bank=100..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/heal_bank

execute if entity @a[scores={second_wind=1..}] as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_charge

execute if entity @e[nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft_effect
execute if entity @e[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft_effect
execute if entity @e[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft_effect

execute if entity @e[nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend_effect

execute if entity @e[nbt={ActiveEffects:[{Id:9b,Amplifier:20b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:20b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive_effect

execute if entity @e[nbt={ActiveEffects:[{Id:30b,Amplifier:10b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:30b,Amplifier:10b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile_effect
execute if entity @e[nbt={ActiveEffects:[{Id:30b,Amplifier:11b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:30b,Amplifier:11b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile_effect
execute if entity @e[nbt={ActiveEffects:[{Id:30b,Amplifier:12b}]}] run execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:30b,Amplifier:12b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile_effect

function cartographer_custom_enchantments:loop/1_second/reset

schedule function cartographer_custom_enchantments:loop/1_second/base 1s