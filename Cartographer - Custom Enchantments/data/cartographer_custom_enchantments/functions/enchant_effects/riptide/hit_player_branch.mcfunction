tag @s add ca.check_ae_main
tag @s add ca.check_si_main
tag @s add ca.check_as_main

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do

execute if score @s ca.hydraulic matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic/circle