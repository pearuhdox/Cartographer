scoreboard players operation $temp ca.var += @s ca.ricochet
scoreboard players operation $temp ca.var += @s ca.current
scoreboard players operation $temp ca.var += @s ca.duelist
scoreboard players operation $temp ca.var += @s ca.hunter
scoreboard players operation $temp ca.var += @s ca.singe
scoreboard players operation $temp ca.var += @s ca.frostbite
scoreboard players operation $temp ca.var += @s ca.fire_aspect
scoreboard players operation $temp ca.var += @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.loyalty
scoreboard players operation $temp ca.var += @s ca.wavedash
scoreboard players operation $temp ca.var += @s ca.executioner
scoreboard players operation $temp ca.var += @s ca.first_strike
scoreboard players operation $temp ca.var += @s ca.hex_eater


scoreboard players operation $temp ca.var += @s ca.off_duelist
scoreboard players operation $temp ca.var += @s ca.off_hunter
scoreboard players operation $temp ca.var += @s ca.off_smite
scoreboard players operation $temp ca.var += @s ca.off_singe
scoreboard players operation $temp ca.var += @s ca.off_frostbite
scoreboard players operation $temp ca.var += @s ca.off_fire_aspect
scoreboard players operation $temp ca.var += @s ca.off_executioner

scoreboard players operation $temp ca.var += @s ca.off_hex_eater
scoreboard players operation $temp ca.var += @s ca.off_first_strike
scoreboard players operation $temp ca.var += @p ca.off_cauterize


scoreboard players operation $temp ca.var += @s ca.collapse

scoreboard players operation $temp ca.var += @s ca.riptide
scoreboard players operation $temp ca.var += @s ca.hydraulic

execute if score $temp ca.var matches 1.. at @s as @e[type=trident,tag=!custom_trident,distance=..7,limit=3,sort=nearest,nbt=!{inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/branch/check_player_branch_trident
