damage @s 3 cartographer_custom_statuses:status_damage


scoreboard players set @s ca.effect_stun 16

playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 0.85
particle minecraft:wax_off ~ ~1 ~ 0.6 0.35 0.6 7 20 normal
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal

execute as @e[type=#bb:hostile,distance=0.01..3.5,limit=3,sort=nearest] at @s run function cartographer_custom_statuses:effects/shocked/group_high_voltage

scoreboard players set @s ca.voltage_shocked 0