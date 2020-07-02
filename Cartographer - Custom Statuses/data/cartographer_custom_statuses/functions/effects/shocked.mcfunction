playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2

execute as @e[type=#cartographer_core:hostile,distance=..3] run effect give @s wither 1 1 true

function cartographer_core:helper/deal_damage/1

particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

scoreboard players remove @s effect_shocked 1
