
scoreboard players operation $custom_linger ca.lifetime = @s ca.lifetime
scoreboard players operation $custom_linger ca.lifetime %= $20 ca.CONSTANT

scoreboard players set $did_linger_inflict ca.var 0

function cartographer_core:potion_mark/linger_vfx

execute if score $custom_linger ca.lifetime matches 0 run function cartographer_custom_enchantments:enchant_calls/thrown_potion/setup_marker
execute if score $custom_linger ca.lifetime matches 0 run function cartographer_custom_statuses:inflict/run_splash

execute if score $custom_linger ca.lifetime matches 0 if score @s ca.attr_potion_size matches 1.. run scoreboard players remove @s ca.attr_potion_size 1
execute if score $custom_linger ca.lifetime matches 0 if score @s ca.attr_potion_size matches ..0 run scoreboard players set @s ca.lifetime 0

execute if score $did_linger_inflict ca.var matches 1.. run scoreboard players remove @s ca.attr_potion_size 5

execute unless score $active_potion ca.registry matches 21.. run scoreboard players set $active_potion ca.registry 20

scoreboard players add @s ca.lifetime 1

execute if score @s ca.attr_potion_size matches ..4 run kill @s
execute if score @s ca.lifetime matches 621.. run kill @s

scoreboard players set $do_chance ca.status_var -1