scoreboard players operation $temp ca.var = @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.frost
scoreboard players operation $temp ca.var += @s ca.explosive
scoreboard players operation $temp ca.var += @s ca.tempo_theft
scoreboard players operation $temp ca.var += @s ca.flame
scoreboard players operation $temp ca.var += @s ca.punch
scoreboard players operation $temp ca.var += @s ca.concentration
scoreboard players operation $temp ca.var += @s ca.point_blank
scoreboard players operation $temp ca.var += @s ca.sharpshot

scoreboard players operation $temp ca.var += @s ca.attr_ranged
scoreboard players operation $temp ca.var += @s ca.attr_ranged_perc
scoreboard players operation $temp ca.var += @s ca.attr_ranged_speed

#if score $temp ca.var matches 1.. 

execute at @s as @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=!custom_arrow,distance=..12,nbt=!{inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/branch/check_player_branch