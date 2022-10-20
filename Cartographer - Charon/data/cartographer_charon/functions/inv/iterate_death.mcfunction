data modify storage cartographer_charon:player inv set value []
function suso.rng:seed
function cartographer_charon:inv/calculate_max_interval
function cartographer_charon:inv/choose_rand_interval
function cartographer_charon:inv/create_bundle
function cartographer_charon:inv/rec

#Get the Home Marker to the correct position to run from

execute unless score $fixed_home charon.gmr matches 1.. run function cartographer_charon:inv/set_position/default

execute if score $fixed_home charon.gmr matches 1 positioned ~ -564 ~ if entity @s[distance=..500] positioned as @s run function cartographer_charon:inv/set_position/set_point
execute if score $fixed_home charon.gmr matches 1 positioned ~ -564 ~ unless entity @s[distance=..500] positioned as @s run function cartographer_charon:inv/set_position/default

execute if score $fixed_home charon.gmr matches 2 run function cartographer_charon:inv/set_position/set_point


execute if data storage cartographer_charon:bundle bundle.tag.Items[] positioned as 38118151-4815-1351-3118-11518 run function cartographer_charon:inv/commit_drop

execute if score $spawner_defenses charon.gmr matches 1.. run function cartographer_charon:cage/master_prime


tp 38118151-4815-1351-3118-11518 4206900 60 4206900

#If Progressive Taxes are enabled, do that here so boons stop it.
execute if score $progressive_tax charon.gmr matches 1.. run function cartographer_charon:taxes/progressive/increase