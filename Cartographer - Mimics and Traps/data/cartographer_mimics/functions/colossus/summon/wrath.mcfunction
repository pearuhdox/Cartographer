summon creeper ~ ~ ~ {DeathLootTable:"cartographer_mimics:colossus",PersistenceRequired:1b,Health:60f,powered:1b,ExplosionRadius:2b,Motion:[0.0,0.5,0.0],Tags:["colossus_wrath","active_colossus","ca.has_active","ca.has_death","ca.hookshot","ca.deathbomb","ca.spectral"],CustomName:'{"text":"Colossus of Wrath","color":"red","bold":true,"italic":false}',HandItems:[{id:"minecraft:paper",Count:1b,tag:{ColossusDeath:1}},{id:"minecraft:nether_star",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],HandDropChances:[2.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.attack_damage,Base:8},{Name:generic.armor,Base:0}]}

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:campfire_signal_smoke ~ ~1.5 ~ 0.3 0.1 0.3 0.075 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

scoreboard players set $health_total ca.trap_tier 60
execute as @e[tag=active_colossus,limit=1,sort=nearest] at @s run function cartographer_mimics:colossus/scale

kill @s