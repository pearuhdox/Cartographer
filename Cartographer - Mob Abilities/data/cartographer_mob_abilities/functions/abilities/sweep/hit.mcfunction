scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
scoreboard players set @s cdl.death_id 310208
tag @s remove no_cdl_msg
function cd:lib/player/damage/normal
tag @s add swept
tag @s add ability_tagged

tag @s add sweep_tagged

execute unless score $no_trait ca.mob_var matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players set $swept ca.mob_var 1