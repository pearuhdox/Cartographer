execute as @a[scores={ca.regen=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/regeneration
execute as @a[scores={ca.regen_bank=100..}] at @s run function cartographer_custom_enchantments:enchant_effects/heal_bank

execute as @a[scores={ca.second_wind=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind/charge

execute as @a[tag=!echo_restored,scores={ca.echo=1,ca.echo_charges=..1},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.echo=2,ca.echo_charges=..2},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.echo=3,ca.echo_charges=..3},tag=out_of_combat] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore

tag @a remove echo_restored

scoreboard players remove @a[scores={ca.trans_cdl=1..}] ca.trans_cdl 1