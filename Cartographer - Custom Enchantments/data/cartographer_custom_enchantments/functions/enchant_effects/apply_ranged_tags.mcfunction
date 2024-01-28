scoreboard players operation $temp ca.var += @s ca.shrapnel

scoreboard players operation $temp ca.var += @s ca.flame
scoreboard players operation $temp ca.var += @s ca.punch
scoreboard players operation $temp ca.var += @s ca.concentration
scoreboard players operation $temp ca.var += @s ca.point_blank
scoreboard players operation $temp ca.var += @s ca.sharpshot

scoreboard players operation $temp ca.var += @s ca.attr_ranged
scoreboard players operation $temp ca.var += @s ca.attr_ranged_perc
scoreboard players operation $temp ca.var += @s ca.attr_ranged_speed

scoreboard players operation $temp ca.var += @s ca.piercing
scoreboard players operation $temp ca.var += @s ca.multishot


scoreboard players operation $temp ca.var += @s ca.fire_aspect
scoreboard players operation $temp ca.var += @s ca.knockback

scoreboard players operation $temp ca.var += @s ca.executioner
scoreboard players operation $temp ca.var += @s ca.first_strike
scoreboard players operation $temp ca.var += @s ca.hex_eater
scoreboard players operation $temp ca.var += @s ca.tempo_theft
scoreboard players operation $temp ca.var += @s ca.cauterize

scoreboard players operation $temp ca.var += @s ca.duelist
scoreboard players operation $temp ca.var += @s ca.hunter
scoreboard players operation $temp ca.var += @s ca.smite

scoreboard players operation $temp ca.var += @s ca.curse_misfortune_main
scoreboard players operation $temp ca.var += @s ca.curse_misfortune_off

#if score $temp ca.var matches 1.. 

execute at @s as @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=!custom_arrow,distance=..12,nbt=!{inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/branch/check_player_branch