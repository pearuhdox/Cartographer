particle minecraft:sculk_charge_pop ~ ~ ~ 0.15 0.15 0.15 0.05 5 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

#Runs as/at the player's position
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile


function cartographer_mob_abilities:abilities/orbit/calc_damage

scoreboard players set $projectile ca.dmg_type 1

execute as @a[distance=..1.35] at @s unless score @s ca.orbit_timer matches 1.. run function cartographer_mob_abilities:abilities/orbit/player_effect
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..1.35] run function cartographer_mob_abilities:helper/damage/ability_projectile

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute unless entity @s[tag=ca.ignore_traits_active] if entity @s[tag=ca.volatile] at @p[distance=..1.35] run function cartographer_mob_abilities:ability_traits/volatile/effect
execute unless entity @s[tag=ca.ignore_traits_active] if entity @s[tag=ca.volatile] at @p[distance=..1.35] run scoreboard players set @s ca.orbit_timer 0

tag @a[distance=..10] remove ability_tagged