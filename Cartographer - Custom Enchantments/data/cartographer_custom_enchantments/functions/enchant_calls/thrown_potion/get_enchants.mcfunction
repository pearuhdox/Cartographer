scoreboard players operation $p_flame ca.var = @s ca.flame
scoreboard players operation $p_frost ca.var = @s ca.frost
scoreboard players operation $p_cauterize ca.var = @s ca.cauterize
scoreboard players operation $p_tempo_theft ca.var = @s ca.tempo_theft
scoreboard players operation $p_punch ca.var = @s ca.punch

scoreboard players operation $p_concentration ca.var = @s ca.concentration

scoreboard players operation $p_point_blank ca.var = @s ca.point_blank
scoreboard players operation $p_sharpshot ca.var = @s ca.sharpshot

scoreboard players operation $p_ranged_damage ca.var = @s ca.attr_ranged

scoreboard players operation $potion_size ca.var = @s ca.attr_potion_size
execute if score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 8
execute unless score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 5
