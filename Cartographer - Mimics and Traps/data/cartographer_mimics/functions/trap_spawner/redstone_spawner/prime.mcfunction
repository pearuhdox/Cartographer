playsound minecraft:block.piston.extend player @a[distance=..16] ~ ~ ~ 1 0.6

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 20 normal
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.2 0.2 0.2 0 20 normal

function cartographer_mimics:trap_spawner/redstone_spawner/ticking