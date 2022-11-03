playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.7 1.75

execute if score $global helper_diff matches 1.. run function cartographer_mob_abilities:ability_traits/overloading/place_x
execute if score $global helper_diff matches 1.. run function cartographer_mob_abilities:ability_traits/overloading/place_x
execute if score $global helper_diff matches 2.. run function cartographer_mob_abilities:ability_traits/overloading/place_x
execute if score $global helper_diff matches 3.. run function cartographer_mob_abilities:ability_traits/overloading/place_x