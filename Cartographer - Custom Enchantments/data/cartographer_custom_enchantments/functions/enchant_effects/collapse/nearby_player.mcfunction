#4, added value of 5-1 = 4
scoreboard players add @s ca.collapse 5
#Breaks 25% faster if a player is within 9 blocks
execute if entity @a[distance=..9] run scoreboard players add @s ca.collapse 1

scoreboard players add @s ca.collapse_time 1
execute if score @s ca.collapse_time matches 21.. run scoreboard players set @s ca.collapse_time 1

execute if score @s ca.collapse_time matches 20 run playsound minecraft:entity.guardian.ambient block @a[distance=..18] ~ ~ ~ 2 2
execute if score @s ca.collapse_time matches 20 run playsound minecraft:entity.shulker.ambient block @a[distance=..18] ~ ~ ~ 0.25 0.5
execute if score @s ca.collapse_time matches 20 run playsound minecraft:entity.generic.eat block @a[distance=..18] ~ ~ ~ 1.5 0.65
execute if score @s ca.collapse_time matches 20 run particle enchanted_hit ~ ~ ~ 0.6 0.3 0.6 0.2 70 force @a
execute if score @s ca.collapse_time matches 20 run particle cloud ~ ~ ~ 0 0 0 0.05 15 force @a

execute if score @s ca.collapse_time matches 5 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score @s ca.collapse_time matches 10 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score @s ca.collapse_time matches 15 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score @s ca.collapse_time matches 20 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a

scoreboard players operation $extra_speed ca.collapse = $efficiency ca.collapse

execute if score $extra_speed ca.collapse matches 11.. run scoreboard players set $extra_speed ca.collapse 10

scoreboard players operation @s ca.collapse += $extra_speed ca.collapse