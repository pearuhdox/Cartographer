attribute @s minecraft:generic.attack_damage modifier add 18-1-7-5-1 mimic_rage 0.2 multiply_base

tag @s remove hookshot

tag @s add charge

tag @s add breaker

tag @s add enraged

effect give @s speed 5 0

scoreboard players set @s cooldown 0

particle minecraft:angry_villager ~ ~2 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.1 0.4 0.1 20 normal

playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 2 1.2
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 0.7
