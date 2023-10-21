scoreboard players operation $past_health ca.status_var = @s ca.brittle_hp
execute store result score $current_health ca.status_var run data get entity @s Health 10

execute if score @s ca.effect_brittle_duration matches 1.. if entity @s[nbt={HurtTime:10s}] run function cartographer_custom_statuses:effects/brittle/hit

execute if score @s ca.brittle_stored matches ..-1 run scoreboard players set @s ca.brittle_stored 0

scoreboard players operation @s ca.brittle_hp = $current_health ca.status_var

particle minecraft:dust_color_transition 0.894 0.412 0.294 0.75 0.8 0.8 0.8 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:dust_color_transition 0.894 0.412 0.294 1.25 0.8 0.8 0.8 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:crimson_spore ~ ~1 ~ 0.1 0.2 0.1 1 1 normal

scoreboard players remove @s ca.effect_brittle_duration 1
execute if score @s ca.effect_brittle_duration matches 0 on passengers if entity @s[type=marker,tag=ca.death_marker] run kill @s