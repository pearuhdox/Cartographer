summon zombie ~ ~ ~ {Silent:1b,Health:40f,IsBaby:0b,Tags:["spectre","ambush","has_active"],CustomName:'{"text":"Spectre"}',HandItems:[{id:"minecraft:iron_hoe",Count:1b},{id:"minecraft:iron_hoe",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;622507235,-973708827,-1234937353,-1894574012],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJlZGI4ZDRiMDZlZWI5NzllZTUxNWY3NzhmMzFiM2RlZWY5MmZiNTgxN2YzNDUyZjUxZmM1OGQ0ODEzNCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0.3},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:8}]}

scoreboard players set @e[tag=spectre,limit=1] cooldown 5

effect give @e[tag=spectre,limit=1] slowness 3 99

effect give @e[tag=spectre,limit=1] weakness 3 99

playsound minecraft:entity.vex.charge hostile @a[distance=..16] ~ ~ ~ 10 0.5

particle minecraft:witch ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

kill @s