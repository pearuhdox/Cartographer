playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1.5 0.8
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.5 0.8

particle minecraft:electric_spark ~ ~4 ~ 0.1 2 0.1 0.3 70 normal
particle minecraft:dust_color_transition 0.914 0.773 0.992 1 1 1 1 ~ ~4 ~ 0.1 2 0.1 0.3 70 normal

particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 1 force
particle minecraft:electric_spark ~ ~0.5 ~ 0.5 0.35 0.5 0.3 100 normal
particle minecraft:dust_color_transition 0.914 0.773 0.992 1 1 1 1 ~ ~0.5 ~ 0.5 0.35 0.5 0.3 100 normal

execute as @a[distance=..2] at @s run function cartographer_mob_abilities:ability_traits/overloading/detonate_player
execute positioned ~-0.5 ~2 ~-0.5 as @a[dx=0,dz=0,dy=4] at @s run function cartographer_mob_abilities:ability_traits/overloading/detonate_player

execute at @s as @a[distance=..4,scores={ca.ability_dmg=1..}] at @s run function cartographer_mob_abilities:helper/damage/macro_setup
execute at @s as @a[distance=..4,scores={ca.ability_dmg=1..}] at @s run function cartographer_mob_abilities:helper/damage/ability_magic with storage cartographer:macro.mob_abilities

kill @s