scoreboard players operation $temp ca.var = @s ca.tempest
scoreboard players operation $temp ca.var += @s ca.ricochet
scoreboard players operation $temp ca.var += @s ca.current
scoreboard players operation $temp ca.var += @s ca.duelist
scoreboard players operation $temp ca.var += @s ca.hunter
scoreboard players operation $temp ca.var += @s ca.singe
scoreboard players operation $temp ca.var += @s ca.frostbite
scoreboard players operation $temp ca.var += @s ca.exposing
scoreboard players operation $temp ca.var += @s ca.stunning
scoreboard players operation $temp ca.var += @s ca.infection
scoreboard players operation $temp ca.var += @s ca.electrocute
scoreboard players operation $temp ca.var += @s ca.bleeding
scoreboard players operation $temp ca.var += @s ca.fire_aspect
scoreboard players operation $temp ca.var += @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.possession
scoreboard players operation $temp ca.var += @s ca.loyalty
scoreboard players operation $temp ca.var += @s ca.wavedash
scoreboard players operation $temp ca.var += @s ca.executioner

scoreboard players operation $temp ca.var += @s ca.off_duelist
scoreboard players operation $temp ca.var += @s ca.off_hunter
scoreboard players operation $temp ca.var += @s ca.off_singe
scoreboard players operation $temp ca.var += @s ca.off_frostbite
scoreboard players operation $temp ca.var += @s ca.off_exposing
scoreboard players operation $temp ca.var += @s ca.off_stunning
scoreboard players operation $temp ca.var += @s ca.off_infection
scoreboard players operation $temp ca.var += @s ca.off_electrocute
scoreboard players operation $temp ca.var += @s ca.off_bleeding
scoreboard players operation $temp ca.var += @s ca.off_fire_aspect
scoreboard players operation $temp ca.var += @s ca.off_possession
scoreboard players operation $temp ca.var += @s ca.off_executioner

scoreboard players operation $temp ca.var += @s ca.collapse

execute if score $temp ca.var matches 1.. at @s as @e[type=trident,limit=1,distance=..7,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/branch/set_custom_trident
