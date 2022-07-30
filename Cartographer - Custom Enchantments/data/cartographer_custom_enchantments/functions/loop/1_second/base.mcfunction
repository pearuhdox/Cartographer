execute as @a[scores={ca.regen=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/regeneration
execute as @a[scores={ca.regen_bank=100..}] at @s run function cartographer_custom_enchantments:enchant_effects/heal_bank

execute as @a[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=1,ca.echo_charges=..1}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=2,ca.echo_charges=..2}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore
execute as @a[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=3,ca.echo_charges=..3}] at @s run function cartographer_custom_enchantments:enchant_effects/echo_restore

tag @a remove echo_restored
tag @a remove showing_echo

scoreboard players remove @a[scores={ca.trans_cdl=1..}] ca.trans_cdl 1

tag @a[scores={ca.combat_timer=1}] add can_first_strike