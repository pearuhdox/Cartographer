scoreboard players set $pot_proc ca.mob_var 1
execute on vehicle run scoreboard players set $pot_proc ca.mob_var 0

execute if score $pot_proc ca.mob_var matches 1 if score $custom_enchantments ca.installed matches 1.. unless entity @s[tag=ca.pot_mark_linger] run function cartographer_custom_enchantments:enchant_calls/thrown_potion/setup_marker
execute if score $pot_proc ca.mob_var matches 1 if score $custom_statuses ca.installed matches 1.. unless entity @s[tag=ca.pot_mark_linger] run function cartographer_custom_statuses:inflict/run_splash

#Setup Lingering Potion
execute if score $pot_proc ca.mob_var matches 1 if entity @s[tag=ca.pot_mark_linger] unless score @s ca.lifetime matches 2.. unless score @s ca.attr_potion_size matches 1.. run scoreboard players set @s ca.attr_potion_size 30
execute if score $pot_proc ca.mob_var matches 1 if entity @s[tag=ca.pot_mark_linger] unless score @s ca.lifetime matches 2.. run scoreboard players set @s ca.lifetime 19


execute on vehicle run function cartographer_core:potion_mark/fix_projectile

execute if score $pot_proc ca.mob_var matches 1 if entity @s[tag=ca.pot_mark_linger] if score @s ca.lifetime matches 1.. run function cartographer_core:potion_mark/run_lingering
execute if score $pot_proc ca.mob_var matches 1 unless entity @s[tag=ca.pot_mark_linger] run kill @s