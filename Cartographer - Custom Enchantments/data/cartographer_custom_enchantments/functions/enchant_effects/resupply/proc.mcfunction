loot spawn ^ ^1.5 ^2 loot cartographer_custom_enchantments:resupply

execute positioned ^ ^1.5 ^2 run function delta:api/explosion_particle

playsound minecraft:entity.villager.work_fisherman player @a[distance=..8] ~ ~ ~ 0.7 0.5
playsound minecraft:entity.item.pickup player @a[distance=..8] ~ ~ ~ 0.8 0.5