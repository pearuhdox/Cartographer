execute if score @s ca.eft_possess matches 1.. anchored eyes positioned ^ ^ ^0.25 run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 normal
execute if score @s ca.eft_possess matches 21.. run effect give @s speed 1 0

execute if score @s ca.eft_possess matches 1 run scoreboard players set @s ca.possess_time 0
execute if score @s ca.eft_possess matches 1 at @s run playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 1.4
execute if score @s ca.eft_possess matches 1 run effect give @s blindness 1 0
execute if score @s ca.eft_possess matches 1 anchored eyes positioned ^ ^ ^ run particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if score @s ca.eft_possess matches 1 anchored eyes positioned ^ ^ ^ run particle minecraft:soul ~ ~ ~ 0.2 0.2 0.2 0.01 15 normal

scoreboard players remove @s ca.eft_possess 1