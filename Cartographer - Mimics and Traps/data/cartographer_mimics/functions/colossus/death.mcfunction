playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 1 0.75
playsound minecraft:entity.ender_dragon.death hostile @a[distance=..16] ~ ~ ~ 0.25 2

particle minecraft:campfire_signal_smoke ~ ~1 ~ 0.2 0.2 0.2 0.25 40 normal

summon experience_orb ~ ~ ~ {Value:20,Motion:[0.0,0.2,0.0]}
summon experience_orb ~0.3 ~ ~ {Value:20,Motion:[0.1,0.1,0.0]}
summon experience_orb ~-0.3 ~ ~ {Value:20,Motion:[-0.1,0.1,0.0]}
summon experience_orb ~ ~ ~0.3 {Value:20,Motion:[0.0,0.1,0.1]}
summon experience_orb ~ ~ ~-0.3 {Value:20,Motion:[0.0,0.1,-0.1]}

kill @s