execute if entity @s[tag=cleanse_fire] run data modify entity @s Fire set value 0
#execute if entity @s[tag=cleanse_fire] run say purge fire
execute if entity @s[tag=cleanse_fire] run tag @s remove cleanse_fire

execute if entity @s[scores={ca.brittle_time=2..}] run attribute @s minecraft:generic.knockback_resistance modifier add 31-1198-514-000-5620 "brittle" -10 multiply

execute if entity @s[scores={ca.brittle_time=1}] run attribute @s minecraft:generic.knockback_resistance modifier remove 31-1198-514-000-5620

execute if entity @s[scores={ca.brittle_time=1}] run scoreboard players set @s ca.brittle_time 0
scoreboard players remove @s[scores={ca.brittle_time=1..}] ca.brittle_time 1

execute store result score @s ca.brittle_hlth run data get entity @s Health 1

particle minecraft:dust_color_transition 0.325 0 0 1 1 1 0.1 ~ ~1 ~ 0.3 0.3 0.3 10 1 normal
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 1 normal