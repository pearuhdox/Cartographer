execute if entity @s[tag=cleanse_fire] run data modify entity @s Fire set value 0
#execute if entity @s[tag=cleanse_fire] run say purge fire
tag @s remove cleanse_fire

execute if score @s ca.brittle_time matches 2.. run attribute @s minecraft:generic.knockback_resistance modifier add 31-1198-514-000-5620 "brittle" -10 multiply
execute if score @s ca.brittle_time matches 1 run attribute @s minecraft:generic.knockback_resistance modifier remove 31-1198-514-000-5620

execute if score @s ca.brittle_time matches 1 run scoreboard players set @s ca.brittle_time 0
execute if score @s ca.brittle_time matches 1.. run scoreboard players remove @s ca.brittle_time 1

execute store result score @s ca.brittle_hlth run data get entity @s Health 1

particle minecraft:dust_color_transition 0.325 0 0 1 1 1 0.1 ~ ~1 ~ 0.3 0.3 0.3 10 1 normal
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 1 normal