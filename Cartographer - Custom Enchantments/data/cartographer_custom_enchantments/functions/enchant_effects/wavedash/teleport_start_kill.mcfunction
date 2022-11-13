scoreboard players set $kill_flag ca.wavedash 1

function cartographer_custom_enchantments:enchant_effects/wavedash/get_id

execute as @a if score @s ca.wavedash_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/wavedash/confirm_teleport

execute if score @s ca.loyalty matches 1.. run kill @s