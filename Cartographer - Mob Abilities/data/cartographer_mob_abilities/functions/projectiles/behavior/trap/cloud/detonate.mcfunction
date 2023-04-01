summon evoker_fangs ~ ~ ~ {Warmup:0}

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players add @s ca.lifetime 100


execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..8,limit=2,sort=nearest] at @s run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/celestial_heal

execute positioned ~-1 ~ ~-1 as @a[dx=2,dy=0,dz=2,tag=ability_tagged] run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/detonate_player
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..2] run function cartographer_mob_abilities:helper/damage/ability_magic

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