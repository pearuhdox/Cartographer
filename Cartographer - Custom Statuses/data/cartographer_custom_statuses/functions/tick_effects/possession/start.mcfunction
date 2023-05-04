scoreboard players set @s ca.possess_time 1

playsound minecraft:entity.vex.charge player @a[distance=..16] ~ ~ ~ 1 1.6
execute as @s at @s anchored eyes run particle minecraft:glow_squid_ink ^ ^0.2 ^ 0 0 0 0.03 4 normal

execute as @e[type=#bb:hostile,distance=0.1..15] at @s run scoreboard players set @s ca.possess_immune 200