tag @s remove ca.restrike
tag @s remove setup

data modify storage cartographer_mob_abilities:storm_tags Tags set from entity @s Tags

tag @s add ca.restrike

function cartographer_mob_abilities:abilities/storm/create_lightning

execute if score $global helper_diff matches 1.. run function cartographer_mob_abilities:abilities/storm/place_x
execute if score $global helper_diff matches 2.. run function cartographer_mob_abilities:abilities/storm/place_x
execute if score $global helper_diff matches 3.. run function cartographer_mob_abilities:abilities/storm/place_x

execute as @e[type=area_effect_cloud,tag=ca.storm_lightning_cloud,tag=!setup,distance=..8] at @s run function cartographer_mob_abilities:abilities/storm/cloud_setup