execute if score $cauterize ca.explosive matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/other

execute if score $flame ca.explosive matches 1.. run data merge entity @s {Fire:101}

execute if score $frost ca.explosive matches 1.. run scoreboard players set @s ca.frost_tier 2
execute if score $frost ca.explosive matches 1.. run scoreboard players set @s ca.frost_time 81

execute if data storage cartographer_custom_statuses:apply_effects data.Effects[0] run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:status_inflict data.Effects[0] run function cartographer_custom_statuses:status_inflict/apply/set_statuses