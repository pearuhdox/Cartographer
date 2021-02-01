playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2

execute as @e[type=#cartographer_core:hostile,distance=0.1..3] run scoreboard players set @s damage_queue 1

scoreboard players set @s damage_queue 2

function cartographer_core:helper/deal_damage/by_score

function cartographer_core:helper/deal_damage/invulnerable_tick

particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

scoreboard players remove @s effect_shocked 1
