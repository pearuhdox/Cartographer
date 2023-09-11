tag @s add ca.storm_close
function cartographer_mob_abilities:abilities/storm/place_x
tag @s remove ca.storm_close

execute if score $global helper_diff matches 1.. run function cartographer_mob_abilities:abilities/storm/place_x
execute if score $global helper_diff matches 2.. run function cartographer_mob_abilities:abilities/storm/place_x
execute if score $global helper_diff matches 3.. run function cartographer_mob_abilities:abilities/storm/place_x