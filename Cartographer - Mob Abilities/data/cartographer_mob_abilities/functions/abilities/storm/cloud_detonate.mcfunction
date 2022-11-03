playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1.5 0.8
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.5 0.8

particle minecraft:electric_spark ~ ~4 ~ 0.1 2 0.1 0.3 70 normal
particle minecraft:dust_color_transition 1 1 1 1 1 1 1 ~ ~4 ~ 0.1 2 0.1 0.3 70 normal

particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 1 force
particle minecraft:electric_spark ~ ~0.5 ~ 0.5 0.35 0.5 0.3 100 normal
particle minecraft:dust_color_transition 1 1 1 1 1 1 1 ~ ~0.5 ~ 0.5 0.35 0.5 0.3 100 normal

scoreboard players operation $lightning ca.ability_dmg = @s ca.ability_dmg

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/storm/alchemist_get_effects

tag @a[distance=..2] add ability_tagged

function cartographer_mob_abilities:abilities/storm/call_storm_traits

execute as @a[distance=..2] at @s run function cartographer_mob_abilities:abilities/storm/detonate_player
execute positioned ~-0.5 ~2 ~-0.5 as @a[dx=0,dz=0,dy=4] at @s run function cartographer_mob_abilities:abilities/storm/detonate_player

kill @s