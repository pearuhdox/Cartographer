execute if score $frost ca.deadeye matches 1.. run scoreboard players set @s ca.frost_time 80
execute if score $frost ca.deadeye matches 1.. run scoreboard players set @s ca.frost_tier 2

execute if score $flame ca.deadeye matches 1.. run data modify entity @s Fire set value 81



execute if score $punch ca.deadeye matches 1.. run scoreboard players set @s co_y 2


execute if score $punch ca.deadeye matches 1 run scoreboard players set @s co_send -10
execute if score $punch ca.deadeye matches 2 run scoreboard players set @s co_send -14
execute if score $punch ca.deadeye matches 3 run scoreboard players set @s co_send -20
execute if score $punch ca.deadeye matches 4 run scoreboard players set @s co_send -25
execute if score $punch ca.deadeye matches 5 run scoreboard players set @s co_send -33

execute if score $punch ca.deadeye matches 1.. run function motion:motion/push

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

scoreboard players set $deadeye_hit ca.deadeye 1

scoreboard players operation @s ca.damage_queue = $deadeye ca.damage_queue
function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:enchant_effects/deadeye/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

scoreboard players set @s ca.deadeye_time 4