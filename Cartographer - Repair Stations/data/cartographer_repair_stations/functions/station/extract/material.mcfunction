execute if score $wooden ca.repair_station_state matches 1.. run clear @s #minecraft:planks 1
execute if score $stone ca.repair_station_state matches 1.. run clear @s minecraft:cobblestone 1
execute if score $iron ca.repair_station_state matches 1.. run clear @s minecraft:iron_ingot 1
execute if score $golden ca.repair_station_state matches 1.. run clear @s minecraft:gold_ingot 1
execute if score $diamond ca.repair_station_state matches 1.. run clear @s minecraft:diamond 1
execute if score $netherite ca.repair_station_state matches 1.. run clear @s minecraft:netherite_ingot 1
execute if score $leather ca.repair_station_state matches 1.. run clear @s minecraft:leather 1
execute if score $chain ca.repair_station_state matches 1.. run clear @s minecraft:chain 1
execute if score $scute ca.repair_station_state matches 1.. run clear @s minecraft:scute 1
execute if score $string ca.repair_station_state matches 1.. run clear @s minecraft:string 1
execute if score $quartz ca.repair_station_state matches 1.. run clear @s minecraft:quartz 1
execute if score $membrane ca.repair_station_state matches 1.. run clear @s minecraft:phantom_membrane 1
execute if score $prismarine ca.repair_station_state matches 1.. run clear @s minecraft:prismarine_shard 1
execute if score $redstone ca.repair_station_state matches 1.. run clear @s minecraft:redstone 1
execute if score $amethyst ca.repair_station_state matches 1.. run clear @s minecraft:amethyst_shard 1
execute if score $copper ca.repair_station_state matches 1.. run clear @s minecraft:copper_ingot 1
execute if score $emerald ca.repair_station_state matches 1.. run clear @s minecraft:emerald 1
execute if score $carrot ca.repair_station_state matches 1.. run clear @s minecraft:carrot 1
execute if score $warped ca.repair_station_state matches 1.. run clear @s minecraft:warped_fungus 1

execute if score $ink ca.repair_station_state matches 1.. run clear @s minecraft:ink_sac 1
execute if score $ender ca.repair_station_state matches 1.. run clear @s minecraft:ender_pearl 1
execute if score $gunpowder ca.repair_station_state matches 1.. run clear @s minecraft:gunpowder 1
execute if score $glowstone ca.repair_station_state matches 1.. run clear @s minecraft:glowstone_dust 1
execute if score $blaze_powder ca.repair_station_state matches 1.. run clear @s minecraft:blaze_powder 1

execute if score $slime ca.repair_station_state matches 1.. run clear @s minecraft:slime_ball 1
execute if score $magma ca.repair_station_state matches 1.. run clear @s minecraft:magma_cream 1
execute if score $star ca.repair_station_state matches 1.. run clear @s minecraft:nether_star 1
execute if score $echo ca.repair_station_state matches 1.. run clear @s minecraft:echo_shard 1
execute if score $shulker ca.repair_station_state matches 1.. run clear @s minecraft:shulker_shell 1

scoreboard players remove $mat_cost ca.repair_station_state 1

execute if score $mat_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/material