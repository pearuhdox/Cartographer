########################################
# File: Cartographer Core - Helper / Push 5
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Deals damage to the callee (intended for players).
# Damage taken is equal to the callee's "damage_queue" score.
########################################

gamerule showDeathMessages false

tp @e[type=iron_golem,tag=cart_damage_dealer] ~ -1024 ~

summon iron_golem ~ ~1024 ~ {CustomName:'{"text":"Custom Damage"}',NoGravity:1b,DeathLootTable:"no_lol",NoAI:1b,Health:1000f,Tags:["cart_damage_dealer"],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:11s},{id:"minecraft:vanishing_curse",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0}]}

execute as @e[type=iron_golem,tag=cart_damage_dealer] at @s positioned ~ ~-1024 ~ store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p[sort=nearest,scores={damage_queue=1..},distance=..2] damage_queue 10

scoreboard players set @s damage_queue 0

attribute @s minecraft:generic.knockback_resistance modifier add 4-1-13-1-7 damage_kb_blocker 10 add

tag @s add damaging

summon arrow ~ ~1028 ~ {damage:10d,Motion:[0.0,-10.0,0.0],Tags:["damage_dealing_device"]}

execute positioned ~ ~1028 ~ run data modify entity @e[type=arrow,tag=damage_dealing_device,limit=1,sort=nearest,distance=..2] Owner set from entity @s UUID

schedule function cartographer_core:load/fix_gamerules 3t