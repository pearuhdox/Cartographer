particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.075 15 normal @a
execute anchored eyes run particle minecraft:smoke ^ ^ ^0.5 0.3 0.3 0.3 0.075 15 normal @a

scoreboard players set @s mob_move_red 6

playsound minecraft:item.crossbow.shoot hostile @a[distance=..15] ~ ~ ~ 1 1.5

tag @s add has_sidearmed

execute anchored eyes positioned ^ ^ ^0.5 run function cartographer_mob_abilities:abilities/sidearm/shoot_branch


#Run not on hit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit
