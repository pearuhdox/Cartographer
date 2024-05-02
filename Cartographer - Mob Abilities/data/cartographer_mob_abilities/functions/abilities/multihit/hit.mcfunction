function cartographer_mob_abilities:helper/damage/ability_melee with storage cartographer:macro.mob_abilities

tag @p add ability_tagged

tag @p add multihit_tagged

execute unless score $no_trait ca.mob_var matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

#scoreboard players add @s ca.multihit_animation 1
#execute if score @s ca.multihit_animation matches 4.. run scoreboard players set @s ca.multihit_animation 1

scoreboard players set $multihit ca.mob_var 1