scoreboard players operation $flame ca.var = @s ca.flame

scoreboard players operation $frost ca.var = @s ca.frost

scoreboard players operation $cauterize ca.var = @s ca.cauterize

scoreboard players operation $explosive ca.var = @s ca.explosive

scoreboard players operation $vol_dmg ca.vol_dmg = @s ca.vol_dmg

scoreboard players operation $tempo_theft ca.var = @s ca.tempo_theft

scoreboard players operation $punch ca.var = @s ca.punch

scoreboard players operation $concentration ca.var = @s ca.concentration
execute if score @s ca.concentration matches 1.. run tag @s add ca.concentration_hit

scoreboard players operation $point_blank ca.var = @s ca.point_blank
scoreboard players operation $sharpshot ca.var = @s ca.sharpshot


execute if score $explosive ca.var matches 1.. on passengers run function cartographer_custom_statuses:player/custom_inflict/projectile_data
execute if score $explosive ca.var matches 1.. store result score $damage ca.explosive run data get entity @s damage 10

scoreboard players operation $ranged_damage ca.var = @s ca.attr_ranged

scoreboard players set $attacker_found ca.var 1