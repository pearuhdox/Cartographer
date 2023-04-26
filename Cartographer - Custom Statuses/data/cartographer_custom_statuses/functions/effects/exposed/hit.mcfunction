scoreboard players operation $health_diff ca.exposed_hp = $past_health ca.exposed_hp
scoreboard players operation $health_diff ca.exposed_hp -= @s ca.exposed_hp

scoreboard players operation $scalar ca.exposed_lvl = @s ca.exposed_lvl
scoreboard players operation $scalar ca.exposed_lvl *= $10 ca.CONSTANT

scoreboard players operation $health_diff ca.exposed_hp *= $scalar ca.exposed_lvl
scoreboard players operation $health_diff ca.exposed_hp /= $100 ca.CONSTANT

scoreboard players set @s ca.exposed_cdl 2

playsound minecraft:block.glass.break hostile @a[distance=..20] ~ ~ ~ 0.5 1.5 
playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..20] ~ ~ ~ 0.5 0.75
playsound minecraft:block.amethyst_block.chime hostile @a[distance=..20] ~ ~ ~ 2 1.5

function cartographer_custom_statuses:effects/exposed/do_damage