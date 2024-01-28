scoreboard players operation $flame ca.var = @s ca.flame
scoreboard players operation $shrapnel ca.var = @s ca.shrapnel
scoreboard players operation $vol_dmg ca.vol_dmg = @s ca.vol_dmg
scoreboard players operation $punch ca.var = @s ca.punch

scoreboard players operation $concentration ca.var = @s ca.concentration
execute if score @s ca.concentration matches 1.. run tag @s add ca.concentration_hit

scoreboard players operation $point_blank ca.var = @s ca.point_blank
scoreboard players operation $sharpshot ca.var = @s ca.sharpshot


scoreboard players operation $cauterize ca.var = @s ca.cauterize
scoreboard players operation $executioner ca.var = @s ca.executioner
scoreboard players operation $first_strike ca.var = @s ca.first_strike
scoreboard players operation $hex_eater ca.var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.var = @s ca.tempo_theft

scoreboard players operation $fire_aspect ca.var = @s ca.fire_aspect
scoreboard players operation $duelist ca.var = @s ca.duelist
scoreboard players operation $hunter ca.var = @s ca.hunter
scoreboard players operation $smite ca.var = @s ca.smite

scoreboard players operation $curse_misfortune ca.var = @s ca.curse_misfortune

execute on passengers run function cartographer_custom_statuses:player/custom_inflict/projectile_data


scoreboard players operation $ranged_damage ca.var = @s ca.attr_ranged
scoreboard players operation $luck ca.var = @s ca.attr_luck
scoreboard players operation $random_crit ca.var = @s ca.attr_random_crit
scoreboard players operation $aoe_size ca.var = @s ca.attr_aoe_size

scoreboard players set $attacker_found ca.var 1