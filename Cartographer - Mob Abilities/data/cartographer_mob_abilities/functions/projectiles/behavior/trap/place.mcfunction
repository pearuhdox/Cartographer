function cartographer_mob_abilities:projectiles/behavior/trap/cloud/spawn

kill @s
playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 1 0.5
particle minecraft:sneeze ~ ~1.5 ~ 0.25 0.25 0.25 0.1 20 normal