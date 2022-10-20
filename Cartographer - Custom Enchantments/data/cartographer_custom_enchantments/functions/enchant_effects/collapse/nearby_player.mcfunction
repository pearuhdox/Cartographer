scoreboard players add @s ca.collapse 2

execute if score $mod_20 ca.collapse matches 0 run playsound minecraft:entity.guardian.ambient block @a[distance=..10] ~ ~ ~ 2 2
execute if score $mod_20 ca.collapse matches 0 run playsound minecraft:entity.shulker.ambient block @a[distance=..10] ~ ~ ~ 0.25 0.5
execute if score $mod_20 ca.collapse matches 0 run playsound minecraft:entity.generic.eat block @a[distance=..10] ~ ~ ~ 1.5 0.65
execute if score $mod_20 ca.collapse matches 0 run particle enchanted_hit ~ ~ ~ 0.6 0.3 0.6 0.2 70 force @a
execute if score $mod_20 ca.collapse matches 0 run particle cloud ~ ~ ~ 0 0 0 0.05 15 force @a

execute if score $mod_20 ca.collapse matches 0 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score $mod_20 ca.collapse matches 5 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score $mod_20 ca.collapse matches 10 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a
execute if score $mod_20 ca.collapse matches 15 run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a

scoreboard players operation $extra_speed ca.collapse = $efficiency ca.collapse
scoreboard players operation $extra_speed ca.collapse *= $2 ca.CONSTANT

execute if score $extra_speed ca.collapse matches 20.. run scoreboard players set $extra_speed ca.collapse 19

execute if score $mod_20 ca.collapse matches 0 run scoreboard players operation @s ca.collapse += $extra_speed ca.collapse