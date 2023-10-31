function cartographer_mob_abilities:helper/damage/ability_melee with storage cartographer:macro.mob_abilities

tag @p add ability_tagged

tag @p add cutter_tagged

execute unless score $no_trait ca.mob_var matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players set $cutter ca.mob_var 1