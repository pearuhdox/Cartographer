scoreboard players set @s ca.trap_timer 1

playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:portal ~ ~ ~ 0 0 0 0.5 80 normal

summon shulker ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"no",AttachFace:1b,Color:15b,Tags:["ca.translocating_spawner_shulker"],Attributes:[{Name:generic.follow_range,Base:0}]}
setblock ~ ~ ~ barrier replace