execute as @a[scores={ca.regen=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/regeneration
execute as @a[scores={ca.regen_bank=100..}] at @s run function cartographer_custom_enchantments:enchant_effects/heal_bank

execute as @a[tag=!echo_restored,scores={ca.echo=1,ca.echo_charges=..1,ca.combat_time=40..}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.echo=2,ca.echo_charges=..2,ca.combat_time=40..}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.echo=3,ca.echo_charges=..3,ca.combat_time=40..}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore

tag @a remove echo_restored
tag @a remove showing_echo

scoreboard players remove @a[scores={ca.trans_cdl=1..}] ca.trans_cdl 1