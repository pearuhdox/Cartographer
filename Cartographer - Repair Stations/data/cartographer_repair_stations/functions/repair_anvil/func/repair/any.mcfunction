
playsound minecraft:block.anvil.use player @a[distance=..16] ~ ~ ~ 0.8 1.1
execute positioned ~ ~-1 ~ as @e[type=interaction,tag=ca.repair_anvil_int.anvil,distance=..1,limit=1,sort=nearest] at @s run function cartographer_repair_stations:repair_anvil/func/remove_anvil/use
