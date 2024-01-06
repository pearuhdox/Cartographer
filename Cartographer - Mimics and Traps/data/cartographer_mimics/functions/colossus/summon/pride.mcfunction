summon iron_golem ~ ~ ~ {Silent:1b,DeathLootTable:"cartographer_mimics:colossus",PersistenceRequired:1b,Health:120f,PlayerCreated:0b,AngerTime:2147483647,Motion:[0.0,0.5,0.0],Tags:["colossus_pride","active_colossus","ca.ability_haste+","ca.ability_dmg-","ca.has_active","ca.smash","ca.acrobatic","ca.acro_gap_close_after"],CustomName:'{"text":"Colossus of Pride","color":"red","bold":true,"italic":false}',HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1348835587,1853442596,-1227945076,-1582600944],Slot:"mainhand"}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],Attributes:[{Name:generic.max_health,Base:120},{Name:generic.attack_damage,Base:1},{Name:generic.armor,Base:0}]}

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:campfire_signal_smoke ~ ~1.5 ~ 0.3 0.1 0.3 0.075 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

scoreboard players set $health_total ca.trap_tier 120
execute as @e[tag=active_colossus,limit=1,sort=nearest] at @s run function cartographer_mimics:colossus/scale

kill @s