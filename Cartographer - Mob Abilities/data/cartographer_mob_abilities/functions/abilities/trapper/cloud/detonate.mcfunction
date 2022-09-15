execute positioned ~ ~ ~ run tp @a[tag=ability_tagged,distance=..3] ~ ~ ~
summon evoker_fangs ~ ~ ~ {Warmup:15}

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players add @s ca.lifetime 100


execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..8,limit=2,sort=nearest] at @s run function cartographer_mob_abilities:abilities/trapper/cloud/celestial_heal

execute positioned ~-2.75 ~ ~-2.75 as @a[dx=2.75,dy=0.01,dz=2.75,tag=ability_tagged] run function cartographer_mob_abilities:abilities/trapper/cloud/detonate_player

playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 0.5
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 0.75
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 1
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.25
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.5
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.75
playsound minecraft:block.chain.break hostile @a[distance=..10] ~ ~ ~ 0.8 2

playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 0.5
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 0.75
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 1
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.25
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.5
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 1.75
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 0.8 2