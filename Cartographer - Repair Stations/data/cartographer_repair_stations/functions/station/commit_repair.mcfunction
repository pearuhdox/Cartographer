data modify storage cartographer_repair_stations:item_input data.tag.Damage set value 0

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 10

function bb:lib/rng

execute unless score $value bbl.rng <= $upgrade_3 ca.repair_station_state run function cartographer_repair_stations:station/increase_cost
execute if score $value bbl.rng <= $upgrade_3 ca.repair_station_state run function cartographer_repair_stations:station/upgrades/proc_runes



function cartographer_repair_stations:station/extract/levels

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 10

function bb:lib/rng

execute unless score $value bbl.rng <= $upgrade_2 ca.repair_station_state run function cartographer_repair_stations:station/extract/lapis_or_essence
execute unless score $value bbl.rng <= $upgrade_2 ca.repair_station_state run function cartographer_repair_stations:station/extract/material
execute if score $value bbl.rng <= $upgrade_2 ca.repair_station_state run function cartographer_repair_stations:station/upgrades/proc_simulacrum

execute if score $upgrade_4 ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/upgrades/apply_shard

execute store result storage cartographer_repair_stations:item_input data.tag.RepairCost int 1 run scoreboard players add $projected_xp_cost ca.repair_station_state 0
execute store result storage cartographer_repair_stations:item_input data.tag.LapisCost int 1 run scoreboard players add $projected_lapis_cost ca.repair_station_state 0

execute at @p run summon item ~ ~ ~ {Age:-32768,Health:1000,PickupDelay:5,Tags:["ca.repair_item_return"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=ca.repair_item_return,distance=..7] at @s run function cartographer_repair_stations:station/return_item_data

playsound minecraft:block.anvil.use block @a[distance=..16] ~ ~ ~ 1 1.35
playsound minecraft:entity.elder_guardian.curse block @a[distance=..16] ~ ~ ~ 0.4 2
playsound minecraft:entity.warden.sonic_boom block @a[distance=..16] ~ ~ ~ 0.5 2
playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 0.5 1

execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:poof ~ ~3 ~ 0 1 0 0.02 40 normal
execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:firework ~ ~1.15 ~0.25 0 0 0 0.03 15 normal
execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:sculk_charge_pop ~ ~1.15 ~ 0.3 0 0.3 0.03 25 normal
execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:sweep_attack ~ ~1.15 ~ 0 0 0 0 1 force

stopsound @a[distance=..16] block minecraft:block.conduit.ambient
playsound minecraft:entity.shulker_bullet.hurt block @s ~ ~ ~ 1 1.5
function cartographer_repair_stations:station/repair_reset