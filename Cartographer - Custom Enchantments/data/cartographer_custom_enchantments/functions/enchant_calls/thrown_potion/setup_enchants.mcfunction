function cartographer_custom_enchantments:enchant_effects/branch/reset_enchants
execute on vehicle on origin run function cartographer_custom_enchantments:enchant_effects/branch/get_player_enchants

scoreboard players operation @s ca.flame = $flame ca.var
scoreboard players operation @s ca.cauterize = $cauterize ca.var

scoreboard players operation @s ca.point_blank = $point_blank ca.var
scoreboard players operation @s ca.sharpshot = $sharpshot ca.var

scoreboard players operation @s ca.frost = $frost ca.var
scoreboard players operation @s ca.punch = $punch ca.var

scoreboard players operation @s ca.concentration = $concentration ca.var
scoreboard players operation @s ca.concentrate_stack = $concentration_stacks ca.var


scoreboard players operation @s ca.explosive = $explosive ca.var

scoreboard players operation @s ca.tempo_theft = $tempo_theft ca.var


scoreboard players operation @s ca.attr_ranged = $attr_ranged ca.var
scoreboard players operation @s ca.attr_ranged_perc = $attr_ranged_perc ca.var
scoreboard players operation @s ca.attr_ranged_speed = $attr_ranged_speed ca.var
scoreboard players operation @s ca.attr_potion_size = $attr_potion_size ca.var