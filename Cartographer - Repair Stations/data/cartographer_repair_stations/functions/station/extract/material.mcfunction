execute if score $wooden ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/planks

execute unless score $wooden ca.repair_station_state matches 1.. run scoreboard players set $data_match bbl.storage 0

execute unless score $wooden ca.repair_station_state matches 1.. if score $stone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:cobblestone"
execute unless score $wooden ca.repair_station_state matches 1.. if score $iron ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:iron_ingot"
execute unless score $wooden ca.repair_station_state matches 1.. if score $golden ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:gold_ingot"
execute unless score $wooden ca.repair_station_state matches 1.. if score $diamond ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:diamond"
execute unless score $wooden ca.repair_station_state matches 1.. if score $netherite ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:netherite_ingot"
execute unless score $wooden ca.repair_station_state matches 1.. if score $leather ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:leather"
execute unless score $wooden ca.repair_station_state matches 1.. if score $chain ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:chain"
execute unless score $wooden ca.repair_station_state matches 1.. if score $scute ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:scute"
execute unless score $wooden ca.repair_station_state matches 1.. if score $string ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:string"
execute unless score $wooden ca.repair_station_state matches 1.. if score $quartz ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:quartz"
execute unless score $wooden ca.repair_station_state matches 1.. if score $membrane ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:phantom_membrane"
execute unless score $wooden ca.repair_station_state matches 1.. if score $prismarine ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:prismarine_shard"
execute unless score $wooden ca.repair_station_state matches 1.. if score $redstone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:redstone"
execute unless score $wooden ca.repair_station_state matches 1.. if score $amethyst ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:amethyst_shard"
execute unless score $wooden ca.repair_station_state matches 1.. if score $copper ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:copper_ingot"
execute unless score $wooden ca.repair_station_state matches 1.. if score $emerald ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:emerald"
execute unless score $wooden ca.repair_station_state matches 1.. if score $carrot ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:carrot"
execute unless score $wooden ca.repair_station_state matches 1.. if score $warped ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:warped_fungus"

execute unless score $wooden ca.repair_station_state matches 1.. if score $ink ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:ink_sac"
execute unless score $wooden ca.repair_station_state matches 1.. if score $ender ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:ender_pearl"
execute unless score $wooden ca.repair_station_state matches 1.. if score $gunpowder ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:gunpowder"
execute unless score $wooden ca.repair_station_state matches 1.. if score $glowstone ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:glowstone"
execute unless score $wooden ca.repair_station_state matches 1.. if score $blaze_powder ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:blaze_powder"

execute unless score $wooden ca.repair_station_state matches 1.. if score $slime ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:slime_ball"
execute unless score $wooden ca.repair_station_state matches 1.. if score $magma ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:magma_cream"
execute unless score $wooden ca.repair_station_state matches 1.. if score $star ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:nether_star"
execute unless score $wooden ca.repair_station_state matches 1.. if score $echo ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:echo_shard"
execute unless score $wooden ca.repair_station_state matches 1.. if score $shulker ca.repair_station_state matches 1.. run data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:shulker_shell"

#Amount to clear.
###If set to 0, it will return the count in "$return_count bbl.storage".
###If set to a number greater then 0 it will clear that amount of the specified item, and cancel its process when it has done so (For optimization, so don't expect an accurate count in the aforementioned score if you set higher then 0!)
execute unless score $wooden ca.repair_station_state matches 1.. run scoreboard players operation $clear_count bbl.storage = $mat_cost ca.repair_station_state

#System call
execute unless score $wooden ca.repair_station_state matches 1.. run function bb:lib/vanilla_item_clear/main