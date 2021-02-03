summon zombie ~ ~ ~ {Health:60f,IsBaby:0b,Tags:["soul","charge","has_active"],CustomName:'{"text":"Exalted Soul"}',HandItems:[{id:"minecraft:shield",Count:1b},{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:16777215}}},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[2045972938,-993705354,-1705029306,1872701067],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc5OTM1MDk4NWZiMTYzYzFjYjc2NGM4YjExOWRiZDJmMzdiZmMwZDZmYjAzMDFiYmFlMzc0NmYxYWVjZjgxYyJ9fX0='}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:2b,Amplifier:6b,Duration:100},{Id:14b,Amplifier:0b,Duration:20000000},{Id:18b,Amplifier:99b,Duration:100}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.26},{Name:generic.attack_damage,Base:12}]}

scoreboard players set @e[tag=soul,limit=1] cooldown 5

effect give @e[tag=soul,limit=1] slowness 3 99

effect give @e[tag=soul,limit=1] weakness 3 99

playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 10 0.5

particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

kill @s