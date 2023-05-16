playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

damage @s 1000 cartographer_custom_enchantments:second_wind_damage

tag @e[type=#bb:hostile,distance=..60] remove ca.second_wind_marked

tag @s remove mortal_coil