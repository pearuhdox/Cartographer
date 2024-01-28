execute if entity @s[scores={ca.regen=1..}] run function cartographer_custom_enchantments:enchant_effects/regeneration/master
execute if entity @s[scores={ca.regen_bank=100..}] run function cartographer_custom_enchantments:enchant_effects/heal_bank


execute if score @s ca.combat_timer matches ..0 if score @s ca.echo_charges < @s ca.echo run function cartographer_custom_enchantments:enchant_effects/echo/restore
execute if score @s ca.combat_timer matches ..0 if score @s ca.evocation_charges < @s ca.evocation run function cartographer_custom_enchantments:enchant_effects/evocation/restore
execute if score @s ca.combat_timer matches ..0 if score @s ca.sweeping_charges < @s ca.sweeping run function cartographer_custom_enchantments:enchant_effects/sweeping/restore
execute if score @s ca.combat_timer matches ..0 if score @s ca.thrusting_charges < @s ca.thrusting run function cartographer_custom_enchantments:enchant_effects/thrusting/restore
execute if score @s ca.combat_timer matches ..0 if score @s ca.slamming_charges < @s ca.slamming run function cartographer_custom_enchantments:enchant_effects/slamming/restore


#function cartographer_custom_enchantments:enchant_effects/confidence/reset
#function cartographer_custom_enchantments:enchant_effects/desperation/reset
function cartographer_custom_enchantments:enchant_effects/stalwart/reset
function cartographer_custom_enchantments:enchant_effects/poise/reset

execute if entity @s[tag=ca.check_hp_percent] run function cartographer_custom_enchantments:enchant_calls/check_hp