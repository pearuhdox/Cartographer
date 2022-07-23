execute if score @s ca.possess_time matches 61.. run function cartographer_custom_statuses:tick_effects/possession/active

execute if score @s ca.possess_time matches 1..10 anchored eyes positioned ^ ^1.5 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 1..10 anchored eyes positioned ^ ^1.5 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 11..20 anchored eyes positioned ^ ^1.25 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 11..20 anchored eyes positioned ^ ^1.25 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 21..30 anchored eyes positioned ^ ^1 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 21..30 anchored eyes positioned ^ ^1 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 31..40 anchored eyes positioned ^ ^0.75 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 31..40 anchored eyes positioned ^ ^0.75 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 41..50 anchored eyes positioned ^ ^0.5 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 41..50 anchored eyes positioned ^ ^0.5 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 51..60 anchored eyes positioned ^ ^0.25 ^ run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s ca.possess_time matches 51..60 anchored eyes positioned ^ ^0.25 ^ run particle minecraft:soul ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s ca.possess_time matches 41 run effect give @s blindness 1 0

execute if score @s ca.possess_time matches 60 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute if score @s ca.possess_time matches 60 at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score @s ca.possess_time matches 60 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a[distance=..16] ~ ~ ~ 1 2
execute if score @s ca.possess_time matches 60 anchored eyes positioned ^ ^ ^ run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.2 12 normal

execute if score @s ca.possess_time matches 60 if entity @s[type=!#bb:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["possession_cloud"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:7b,Duration:10,Amplifier:31b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute if score @s ca.possess_time matches 60 if entity @s[type=#bb:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["possession_cloud"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:6b,Duration:10,Amplifier:31b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute if score @s ca.possess_time matches 60 at @s run data modify entity @e[type=area_effect_cloud,tag=possession_cloud,limit=1,sort=nearest] Owner set from entity @e[type=#bb:hostile,distance=0.75..16,sort=nearest,limit=1] UUID


execute unless score @s ca.possess_time matches 61.. run scoreboard players add @s ca.possess_time 1
