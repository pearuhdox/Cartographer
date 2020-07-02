summon zombie ~ ~ ~ {Glowing:1b,Health:60f,IsBaby:0b,Tags:["soul","charge","has_active"],CustomName:'{"text":"Exalted Soul"}',HandItems:[{id:"minecraft:shield",Count:1b},{id:"minecraft:iron_axe",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"4a8b5532-125d-4924-bad4-eeba8840ef51",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY1MWU1OTM4MzdmYzMyOTAyOTRiN2NjZGM0N2EwZDNkYjljYmZmMDkzNWRjOGFkYTRiNzIwMjNmMGE3YzgifX19"}]}}}}],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F],ActiveEffects:[{Id:2b,Amplifier:6b,Duration:100},{Id:14b,Amplifier:0b,Duration:20000000},{Id:18b,Amplifier:99b,Duration:100}],Attributes:[{Name:generic.maxHealth,Base:60},{Name:generic.followRange,Base:40},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.26},{Name:generic.attackDamage,Base:12}]}

scoreboard players set @e[tag=soul,limit=1] cooldown 5

effect give @e[tag=soul,limit=1] slowness 5 99

effect give @e[tag=soul,limit=1] weakness 5 99

playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 10 0.5

particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

kill @s