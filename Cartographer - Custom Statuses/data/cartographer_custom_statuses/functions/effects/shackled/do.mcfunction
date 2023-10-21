scoreboard players operation $past_health ca.status_var = @s ca.shackled_hp
execute store result score $current_health ca.status_var run data get entity @s Health 10

execute unless score @s ca.shackled_cdl matches 1.. if score @s ca.effect_shackled matches 1.. if entity @s[nbt={HurtTime:10s}] run function cartographer_custom_statuses:effects/shackled/hit

scoreboard players operation @s ca.shackled_hp = $current_health ca.status_var

particle minecraft:dust 0.8 0.8 0.8 1.25 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:dust 0.8 0.8 0.8 0.75 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:white_ash ~ ~1 ~ 0.25 0.4 0.25 1 1 normal

scoreboard players remove @s ca.effect_shackled 1
execute if score @s ca.effect_shackled matches 0 on passengers if entity @s[type=marker,tag=ca.death_marker] run kill @s