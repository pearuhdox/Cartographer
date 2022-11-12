scoreboard players set @s ca.raycast 12

scoreboard players set @s mob_move_red 23

execute as @s anchored eyes run function cartographer_mob_abilities:abilities/quickdraw/raycast

#Trait Effects (outside of raycast call)
execute if entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

tag @a[distance=..16] remove quickdrawn
