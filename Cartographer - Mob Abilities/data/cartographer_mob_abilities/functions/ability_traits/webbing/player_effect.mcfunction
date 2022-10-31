execute if score $block_webbing_time ca.var matches 1.. unless entity @e[type=area_effect_cloud,tag=ca.webbing_cloud,distance=..3] run function cartographer_mob_abilities:ability_traits/webbing/commit_player_effect

execute unless score $block_webbing_time ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/webbing/commit_player_effect