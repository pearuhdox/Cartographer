scoreboard players set $repair_go ca.repair_station_state 0
scoreboard players set $player_lapis ca.repair_station_state 0
scoreboard players set $player_xp ca.repair_station_state 0
scoreboard players set $player_mat ca.repair_station_state 0


execute unless score $use_essence ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:lapis_lazuli"
execute unless score $use_essence ca.repair_station_state matches 1.. run scoreboard players set $clear_count bbl.storage 0
execute unless score $use_essence ca.repair_station_state matches 1.. run function bb:lib/vanilla_item_clear/main
execute unless score $use_essence ca.repair_station_state matches 1.. run scoreboard players operation $player_lapis ca.repair_station_state = $return_count bbl.storage

execute if score $use_essence ca.repair_station_state matches 1.. store result score $player_lapis ca.repair_station_state run clear @s minecraft:player_head{display:{Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}} 0
execute store result score $player_xp ca.repair_station_state run data get entity @s XpLevel

scoreboard players set $data_match bbl.storage 0

execute if score $wooden ca.repair_station_state matches 1.. store result score $player_mat ca.repair_station_state run clear @s #minecraft:planks 0
execute if score $stone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:cobblestone"
execute if score $iron ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:iron_ingot"
execute if score $golden ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:gold_ingot"
execute if score $diamond ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:diamond"
execute if score $netherite ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:netherite_ingot"
execute if score $leather ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:leather"
execute if score $chain ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:chain"
execute if score $scute ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:scute"
execute if score $string ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:string"
execute if score $quartz ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:quartz"
execute if score $membrane ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:membrane"
execute if score $redstone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:redstone"
execute if score $amethyst ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:amethyst_shard"
execute if score $copper ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:copper_ingot"
execute if score $emerald ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:emerald"
execute if score $carrot ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:carrot"
execute if score $warped ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:warped_fungus"
execute if score $prismarine ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:prismarine_shard"

execute if score $ink ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:ink_sac"
execute if score $ender ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:ender_pearl"
execute if score $gunpowder ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:gunpowder"
execute if score $glowstone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:glowstone"
execute if score $blaze_powder ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:blaze_powder"

execute if score $slime ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:slime_ball"
execute if score $magma ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:magma_cream"
execute if score $star ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:nether_star"
execute if score $echo ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:echo_shard"
execute if score $shulker ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:shulker_shell"


scoreboard players set $clear_count bbl.storage 0
function bb:lib/vanilla_item_clear/main
scoreboard players operation $player_mat ca.repair_station_state = $return_count bbl.storage


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

#Repair Go?
execute if score $player_xp ca.repair_station_state >= $xp_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1
execute if score $player_lapis ca.repair_station_state >= $lapis_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1
execute if score $player_mat ca.repair_station_state >= $mat_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1