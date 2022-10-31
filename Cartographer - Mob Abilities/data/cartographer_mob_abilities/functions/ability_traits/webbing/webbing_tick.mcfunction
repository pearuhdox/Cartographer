scoreboard players add @s ca.lifetime 1

execute if score $global helper_diff matches 1 if score @s ca.lifetime matches 61 run function cartographer_mob_abilities:ability_traits/webbing/despawn
execute if score $global helper_diff matches 2 if score @s ca.lifetime matches 91 run function cartographer_mob_abilities:ability_traits/webbing/despawn
execute if score $global helper_diff matches 3.. if score @s ca.lifetime matches 121 run function cartographer_mob_abilities:ability_traits/webbing/despawn