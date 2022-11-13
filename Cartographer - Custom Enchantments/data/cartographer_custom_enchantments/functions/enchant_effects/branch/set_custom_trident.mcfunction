scoreboard players operation @s ca.tempest = @p ca.tempest
scoreboard players operation @s ca.ricochet = @p ca.ricochet
scoreboard players operation @s ca.current = @p ca.current
scoreboard players operation @s ca.loyalty = @p ca.loyalty
scoreboard players operation @s ca.wavedash = @p ca.wavedash
scoreboard players operation @s ca.collapse = @p ca.collapse


scoreboard players operation @s ca.duelist = @p ca.duelist
scoreboard players operation @s ca.hunter = @p ca.hunter
scoreboard players operation @s ca.singe = @p ca.singe
scoreboard players operation @s ca.frostbite = @p ca.frostbite
scoreboard players operation @s ca.exposing = @p ca.exposing
scoreboard players operation @s ca.stunning = @p ca.stunning
scoreboard players operation @s ca.infection = @p ca.infection
scoreboard players operation @s ca.electrocute = @p ca.electrocute
scoreboard players operation @s ca.bleeding = @p ca.bleeding
scoreboard players operation @s ca.fire_aspect = @p ca.fire_aspect
scoreboard players operation @s ca.cauterize = @p ca.cauterize
scoreboard players operation @s ca.possession = @p ca.possession
scoreboard players operation @s ca.executioner = @p ca.executioner


scoreboard players operation @s ca.duelist += @p ca.off_duelist
scoreboard players operation @s ca.hunter += @p ca.off_hunter
scoreboard players operation @s ca.singe += @p ca.off_singe
scoreboard players operation @s ca.frostbite += @p ca.off_frostbite
scoreboard players operation @s ca.exposing += @p ca.off_exposing
scoreboard players operation @s ca.stunning += @p ca.off_stunning
scoreboard players operation @s ca.infection += @p ca.off_infection
scoreboard players operation @s ca.electrocute += @p ca.off_electrocute
scoreboard players operation @s ca.bleeding += @p ca.off_bleeding
scoreboard players operation @s ca.fire_aspect += @p ca.off_fire_aspect
scoreboard players operation @s ca.possession += @p ca.off_possession
scoreboard players operation @s ca.executioner += @p ca.off_executioner

execute if score @s ca.ricochet matches 1.. run tag @s add is_ricocheting

tag @s add custom_trident