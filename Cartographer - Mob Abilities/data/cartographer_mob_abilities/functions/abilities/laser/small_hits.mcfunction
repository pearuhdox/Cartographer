execute as @a[distance=..1.6] at @s run function cartographer_mob_abilities:abilities/laser/at_player_small
function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute positioned as @s run tag @a remove ability_tagged
