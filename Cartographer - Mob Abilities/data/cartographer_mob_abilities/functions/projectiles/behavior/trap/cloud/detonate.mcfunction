execute if entity @s[tag=ca.webbing] positioned ~ ~ ~ run tp @a[tag=ability_tagged,distance=..3] ~ ~0.25 ~
execute unless entity @s[tag=ca.webbing] positioned ~ ~ ~ run tp @a[tag=ability_tagged,distance=..3] ~ ~0.15 ~

summon evoker_fangs ~ ~ ~ {Warmup:15}

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players add @s ca.lifetime 100


execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..8,limit=2,sort=nearest] at @s run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/celestial_heal

execute positioned ~-1.5 ~ ~-1.5 as @a[dx=3,dy=0.01,dz=3,tag=ability_tagged] run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/detonate_player

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