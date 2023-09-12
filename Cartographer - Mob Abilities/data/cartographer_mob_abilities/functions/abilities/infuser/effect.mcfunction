particle minecraft:effect ~ ~1 ~ 0.35 0.5 0.35 0.05 20 normal

scoreboard players set @s mob_move_dis 7
execute summon minecraft:area_effect_cloud run function cartographer_mob_abilities:abilities/infuser/set_effects

execute unless entity @s[tag=ca.infuser] run function cartographer_mob_abilities:abilities/infuser/call_parent_traits

scoreboard players add $imbue_count ca.mob_var 1