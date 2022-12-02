summon slime ~ ~ ~ {Silent:1b,DeathLootTable:"cartographer_mimics:colossus",PersistenceRequired:1b,Health:200f,Size:1,Motion:[0.0,0.5,0.0],Tags:["colossus_gluttony","active_colossus","ca.has_active","ca.active_when_hit","ca.size_grow","ca.growth_slowerest","ca.charge","ca.has_active"],CustomName:'{"text":"Colossus of Gluttony","color":"red","bold":true,"italic":false}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-384008954,-1820046746,-1301196872,-457187824]}],SkullOwner:{Id:[I;1789623646,1923696787,-1797644131,-1488734365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzlkODdlMmVmMmYzMTdmYThmMjdmYTk4ZjdlNzQ0ZWNlYmYwNzIwODc2MzIzZWFiOTIxMDUwMzFiMTAzMGNiYiJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.attack_damage,Base:1},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:2}]}

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:campfire_signal_smoke ~ ~1.5 ~ 0.3 0.1 0.3 0.075 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

execute as @e[tag=active_colossus,limit=1,sort=nearest] at @s run function cartographer_mimics:colossus/scale

kill @s