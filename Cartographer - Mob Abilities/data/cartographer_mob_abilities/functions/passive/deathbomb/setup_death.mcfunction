data modify entity @s Fuse set value 0
data modify entity @s ignited set value 1b

data modify storage cartographer_mob_abilities:deathbomb Tags set value []
data modify storage cartographer_mob_abilities:deathbomb Tags set from entity @s Tags

data modify storage cartographer_mob_abilities:deathbomb HandItems set value []
data modify storage cartographer_mob_abilities:deathbomb HandItems set from entity @s HandItems


summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"cartographer_mob_abilities:death_test/test_deathbomb",NoAI:1b,Health:1f,Size:0,Tags:["ca.deathbomb_dummy_spawn"],HandItems:[{id:"minecraft:chest",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:200000000,ShowParticles:0b},{Id:20,Amplifier:2b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}

execute as @e[type=slime,distance=..1,tag=ca.deathbomb_dummy_spawn,tag=!setup,sort=nearest] at @s run function cartographer_mob_abilities:passive/deathbomb/slime_tags
