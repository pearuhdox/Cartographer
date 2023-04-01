scoreboard players set $repair_go ca.repair_station_state 0
scoreboard players set $player_lapis ca.repair_station_state 0
scoreboard players set $player_xp ca.repair_station_state 0
scoreboard players set $player_mat ca.repair_station_state 0

execute unless score $use_essence ca.repair_station_state matches 1.. store result score $player_lapis ca.repair_station_state run clear @s minecraft:lapis_lazuli 0
execute if score $use_essence ca.repair_station_state matches 1.. store result score $player_lapis ca.repair_station_state run clear @s minecraft:player_head{display:{Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}} 0
execute store result score $player_xp ca.repair_station_state run data get entity @s XpLevel


execute if score $wooden ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s #minecraft:planks 0
execute if score $stone ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:cobblestone 0
execute if score $iron ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:iron_ingot 0
execute if score $golden ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:gold_ingot 0
execute if score $diamond ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:diamond 0
execute if score $netherite ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:netherite_ingot 0
execute if score $leather ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:leather 0
execute if score $chain ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:chain 0
execute if score $scute ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:scute 0
execute if score $string ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:string 0
execute if score $quartz ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:quartz 0
execute if score $membrane ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:phantom_membrane 0
execute if score $redstone ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:redstone 0
execute if score $amethyst ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:amethyst_shard 0
execute if score $copper ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:copper_ingot 0
execute if score $emerald ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:emerald 0
execute if score $carrot ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:carrot 0
execute if score $warped ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:warped_fungus 0
execute if score $prismarine ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:prismarine_shard 0

execute if score $ink ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:ink_sac 0
execute if score $ender ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:ender_pearl 0
execute if score $gunpowder ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:gunpowder 0
execute if score $glowstone ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:glowstone_dust 0
execute if score $blaze_powder ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:blaze_powder 0

execute if score $slime ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:slime_ball 0
execute if score $magma ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:magma_cream 0
execute if score $star ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:nether_star 0
execute if score $echo ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:echo_shard 0
execute if score $shulker ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s minecraft:shulker_shell 0

execute if score $player_xp ca.repair_station_state >= $xp_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1
execute if score $player_lapis ca.repair_station_state >= $lapis_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1


execute if score $wooden ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $wooden ca.repair_station_state 
execute if score $stone ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $stone ca.repair_station_state 
execute if score $iron ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $iron ca.repair_station_state 
execute if score $golden ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $golden ca.repair_station_state 
execute if score $diamond ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $diamond ca.repair_station_state 
execute if score $netherite ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $netherite ca.repair_station_state 
execute if score $leather ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $leather ca.repair_station_state 
execute if score $chain ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $chain ca.repair_station_state 
execute if score $scute ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $scute ca.repair_station_state 
execute if score $string ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $string ca.repair_station_state 
execute if score $quartz ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $quartz ca.repair_station_state 
execute if score $membrane ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $membrane ca.repair_station_state 
execute if score $redstone ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $redstone ca.repair_station_state 
execute if score $amethyst ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $amethyst ca.repair_station_state 
execute if score $copper ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $copper ca.repair_station_state 
execute if score $emerald ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $emerald ca.repair_station_state 
execute if score $carrot ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $carrot ca.repair_station_state 
execute if score $warped ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $warped ca.repair_station_state 
execute if score $prismarine ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $prismarine ca.repair_station_state 

execute if score $ink ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $ink ca.repair_station_state 
execute if score $ender ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $ender ca.repair_station_state 
execute if score $gunpowder ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $gunpowder ca.repair_station_state 
execute if score $glowstone ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $glowstone ca.repair_station_state 
execute if score $blaze_powder ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $blaze_powder ca.repair_station_state 

execute if score $slime ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $slime ca.repair_station_state 
execute if score $magma ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $magma ca.repair_station_state 
execute if score $star ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $star ca.repair_station_state 
execute if score $echo ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $echo ca.repair_station_state 
execute if score $shulker ca.repair_station_state matches 1.. run scoreboard players operation $mat_cost ca.repair_station_state = $shulker ca.repair_station_state 

execute if score $player_mat ca.repair_station_state >= $mat_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1