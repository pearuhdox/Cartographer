
summon item ~ ~.3 ~ {Invulnerable:1b,Item:{id:"minecraft:anvil",Count:1b}}
execute positioned ~ ~.025 ~ run function cartographer_repair_stations:repair_anvil/func/remove_anvil/main
particle crit ~ ~ ~ 0.15 0.1 0.15 .001 15
