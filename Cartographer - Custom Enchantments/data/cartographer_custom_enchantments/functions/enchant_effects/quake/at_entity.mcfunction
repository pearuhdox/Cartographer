function cartographer_custom_enchantments:enchant_effects/quake/macro with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @a[tag=ca.quake_user] ca.linger_cdl 300

execute if score $quake_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/vfx with storage cartographer:macro.custom_enchantments

execute if score $quake_mob ca.ench_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec

tag @a remove ca.quake_user