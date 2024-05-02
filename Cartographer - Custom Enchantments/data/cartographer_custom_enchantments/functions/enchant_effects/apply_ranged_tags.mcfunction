scoreboard players operation $temp ca.var = @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.frost
scoreboard players operation $temp ca.var += @s ca.explosive
scoreboard players operation $temp ca.var += @s ca.tempo_theft
scoreboard players operation $temp ca.var += @s ca.flame
scoreboard players operation $temp ca.var += @s ca.punch

execute if score $temp ca.var matches 1.. at @s as @e[type=#bb:arrow,tag=!custom_arrow,distance=..7,nbt=!{inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/branch/check_player_branch