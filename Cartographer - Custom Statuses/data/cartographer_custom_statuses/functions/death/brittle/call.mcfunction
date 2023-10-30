scoreboard players operation $brittle_detonate ca.status_var = @s ca.effect_brittle_level

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..12] ~ ~ ~ 1 0.75
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1.5 0.5

playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..12] ~ ~ ~ 1.5 2
playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..12] ~ ~ ~ 1.5 2

execute positioned ~ ~1 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust_color_transition 0.894 0.412 0.294 2 0.8 0.8 0.8 ~ ~1 ~ 0.4 0.25 0.4 0 20 normal
particle minecraft:dust_color_transition 0.894 0.412 0.294 2 0.8 0.8 0.8 ~ ~1 ~ 0.8 0.25 0.8 0 40 normal

execute as @e[type=#cartographer_core:hostile,distance=..3] at @s run function cartographer_custom_statuses:effects/brittle/damage