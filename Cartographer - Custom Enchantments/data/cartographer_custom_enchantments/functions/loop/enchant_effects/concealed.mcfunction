execute unless entity @e[type=#cartographer_core:hostile,distance=..12] run scoreboard players add @s[scores={ca.conceal_time=..78}] ca.conceal_time 1

execute if entity @s[scores={ca.conceal_time=79}] run effect give @e[type=#cartographer_core:hostile,distance=..16] blindness 2 0
execute if entity @s[scores={ca.conceal_time=79}] run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 ca_stealth 0.5 multiply
execute if entity @s[scores={ca.conceal_time=79}] run playsound minecraft:item.firecharge.use player @a[distance=..12] ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.conceal_time=79}] run playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 2 0.75
execute if entity @s[scores={ca.conceal_time=79}] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 0 1 0.05 30 normal
execute if entity @s[scores={ca.conceal_time=79..}] run summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:20,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-1f,Duration:100,DurationOnUse:0,Age:0,WaitTime:0,Tags:["helper_cloud"],Potion:"minecraft:mundane",Effects:[{Id:14b,Amplifier:1b,Duration:8,ShowParticles:1b}]}

scoreboard players add @s[scores={ca.conceal_time=79}] ca.conceal_time 1