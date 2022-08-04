gamerule keepInventory true
forceload add 271101 271101

function suso.rng:seed

scoreboard objectives add dt.death deathCount
scoreboard objectives add dt.respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add dt.var dummy

scoreboard objectives add charon.death_count deathCount

scoreboard objectives add charon.gmr dummy

scoreboard players set 1 dt.var 1
scoreboard players set 2 dt.var 2
scoreboard players set 3 dt.var 3
scoreboard players set 4 dt.var 4
scoreboard players set 5 dt.var 5
scoreboard players set 6 dt.var 6
scoreboard players set 7 dt.var 7
scoreboard players set 8 dt.var 8
scoreboard players set 9 dt.var 9
scoreboard players set 10 dt.var 10

#summon villager -13 142 -96 {Attributes:[{Name:generic.movement_speed,Base:0.01}],Invulnerable:1b,UUID:[I;0,0,27,11],Willing:1b,CustomName:'{"text":"Necromancer Jaerida","color":"#644796"}',VillagerData:{level:99,profession:"minecraft:cartographer",type:"minecraft:desert"}}