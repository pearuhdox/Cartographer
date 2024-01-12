#attribute @s minecraft:generic.attack_damage modifier add 18-1-7-5-1 "mimic_rage" 0.2 multiply_base
#attribute @s minecraft:generic.knockback_resistance modifier add 18-1-7-5-1 "mimic_rage" 0.2 add

tag @s add ca.breaker
tag @s add ca.cursing
tag @s add ca.enraged

effect give @s speed 30 0
effect give @s regeneration 120 1

scoreboard players set @s cooldown 0

particle minecraft:angry_villager ~ ~2 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.1 0.4 0.1 20 normal

playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 2 1.2
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 0.7