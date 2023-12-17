scoreboard players operation $val ca.attr_ranged = $attr_ranged ca.var
scoreboard players operation $val ca.attr_ranged_perc = $attr_ranged_perc ca.var

execute if score $val ca.attr_ranged matches ..0 run scoreboard players set $val ca.attr_ranged 1
scoreboard players operation $val ca.attr_ranged *= $val ca.attr_ranged_perc
scoreboard players operation $val ca.attr_ranged /= $100 ca.CONSTANT

scoreboard players operation $draw_percent ca.attr_ranged = @s ca.draw_bow_time
scoreboard players operation $draw_percent ca.attr_ranged *= $5 ca.CONSTANT
scoreboard players operation $draw_percent ca.attr_ranged += $10 ca.CONSTANT
execute if score $draw_percent ca.attr_ranged matches 101.. run scoreboard players set $draw_percent ca.attr_ranged 100

execute if score @s ca.draw_bow_time matches 1.. run scoreboard players operation $val ca.attr_ranged *= $draw_percent ca.attr_ranged
execute if score @s ca.draw_bow_time matches 1.. run scoreboard players operation $val ca.attr_ranged /= $100 ca.CONSTANT

execute as @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:attribute_effects/ranged_damage/modify_arrow