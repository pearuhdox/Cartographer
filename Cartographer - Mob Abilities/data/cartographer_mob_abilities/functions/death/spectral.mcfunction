scoreboard players set $ins_spectral ca.mob_var 0
execute if entity @s[tag=ca.instant_spectral] run scoreboard players set $ins_spectral ca.mob_var 1

summon item ~ ~ ~ {Glowing:1b,NoGravity:1b,Age:-32768,Health:100,PickupDelay:32767,Motion:[0.0,0.03,0.0],Tags:["ca.spectre_spawner_item","new_spectre_item"],Item:{id:"minecraft:wither_skeleton_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:zombie",Silent:1b,Health:30f,IsBaby:0b,Tags:["spectre","ca.ambush","ca.has_active"],CustomName:'{"text":"Shade"}',HandItems:[{id:"minecraft:iron_hoe",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1608795588,-1835973793,-1487778813,-1039581905]}]}},{id:"minecraft:iron_hoe",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;622507235,-973708827,-1234937353,-1894574012],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJlZGI4ZDRiMDZlZWI5NzllZTUxNWY3NzhmMzFiM2RlZWY5MmZiNTgxN2YzNDUyZjUxZmM1OGQ0ODEzNCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000}],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:0.3},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:0}]}}}}

execute as @e[type=item,tag=new_spectre_item,distance=..1,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:death/spectral/setup_egg

playsound minecraft:entity.vex.charge hostile @a[distance=..16] ~ ~ ~ 1.2 0.5

particle minecraft:witch ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s