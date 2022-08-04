execute unless score @s ca.reload_type matches 0.. run scoreboard players set @s ca.reload_type 0

execute unless score @s ca.lexica_trig matches 1.. run scoreboard players set @s ca.lexica_trig 0
execute unless score @s ca.options_trig matches 1.. run scoreboard players set @s ca.options_trig 0

scoreboard players add @s ehp_listen 1
scoreboard players add @s phe_listen 1
execute unless score @s ca.reload_type matches 0.. run scoreboard players set @s ca.reload_type 0
execute unless score @s ca.ui_loc matches 0.. run scoreboard players set @s ca.ui_loc 0

tag @s add ca.init

#say Initialize