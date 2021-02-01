execute as @a[scores={regeneration=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/regeneration
execute as @a[scores={helper_heal_bank=100..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/heal_bank

execute as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_charge

execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_arrow_effect
execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:30b}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_arrow_effect

execute as @a[tag=!echo_restored,scores={echo=1,echo_charges=..1}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={echo=2,echo_charges=..2}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={echo=3,echo_charges=..3}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore

tag @a remove echo_restored

function cartographer_custom_enchantments:loop/1_second/reset