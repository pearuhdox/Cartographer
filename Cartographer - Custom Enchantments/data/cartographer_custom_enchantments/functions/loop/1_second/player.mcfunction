execute if entity @s[scores={ca.regen=1..}] run function cartographer_custom_enchantments:enchant_effects/regeneration
execute if entity @s[scores={ca.regen_bank=100..}] run function cartographer_custom_enchantments:enchant_effects/heal_bank

execute if entity @s[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=1,ca.echo_charges=..0}] run function cartographer_custom_enchantments:enchant_effects/echo/restore
execute if entity @s[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=2,ca.echo_charges=..1}] run function cartographer_custom_enchantments:enchant_effects/echo/restore
execute if entity @s[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=3,ca.echo_charges=..2}] run function cartographer_custom_enchantments:enchant_effects/echo/restore
execute if entity @s[tag=!echo_restored,scores={ca.combat_timer=..0,ca.echo=4..,ca.echo_charges=..3}] run function cartographer_custom_enchantments:enchant_effects/echo/restore

tag @s remove echo_restored
tag @s remove showing_echo

#Shielding
execute if score @s ca.shielding matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/clock
execute unless score @s ca.shielding matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/stopped_using

tag @s[scores={ca.combat_timer=1}] add can_first_strike

function cartographer_custom_enchantments:enchant_effects/confidence/reset
function cartographer_custom_enchantments:enchant_effects/desperation/reset
function cartographer_custom_enchantments:enchant_effects/stalwart/reset
function cartographer_custom_enchantments:enchant_effects/poise/reset

execute if entity @s[tag=ca.check_hp_percent] run function cartographer_custom_enchantments:enchant_calls/check_hp