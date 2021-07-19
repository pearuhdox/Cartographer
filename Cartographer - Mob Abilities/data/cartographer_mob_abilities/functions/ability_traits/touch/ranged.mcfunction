#Call all mob traits on the mob, call all player traits on the player.
execute as @s at @s run function cartographer_mob_abilities:ability_traits/touch/at_mob
execute as @s at @s run function cartographer_mob_abilities:ability_traits/touch/at_player