execute as @a[scores={regeneration=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/regeneration
execute as @a[scores={helper_heal_bank=100..}] at @s run function cartographer_custom_enchantments:enchant_effects/heal_bank

execute as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind/charge

execute as @a[tag=out_of_combat] at @s if entity @e[type=#cartographer_core:hostile,distance=..10] run tag @s remove out_of_combat
execute as @a[tag=!out_of_combat] at @s unless entity @e[type=#cartographer_core:hostile,distance=..10] run tag @s add out_of_combat

execute as @a[tag=!echo_restored,scores={echo=1,echo_charges=..1},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={echo=2,echo_charges=..2},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={echo=3,echo_charges=..3},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore

tag @a remove echo_restored

scoreboard players remove @a[scores={tra_cool=1..}] tra_cool 1

function cartographer_custom_enchantments:loop/1_second/reset