scoreboard players set @s cooldown 9

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

playsound minecraft:item.trident.thunder player @a[distance=..20] ~ ~ ~ 1.5 1.5

function cartographer_mob_abilities:abilities/storm/calc_damage

data modify storage cartographer_mob_abilities:storm_tags Tags set value []

function cartographer_mob_abilities:abilities/storm/populate_tags

execute if entity @s[tag=ca.lightning_rod] unless entity @s[tag=ca.lightning_rod_only] run function cartographer_mob_abilities:abilities/storm/mob_effect
execute if entity @s[tag=ca.lightning_rod_only] unless entity @s[tag=ca.lightning_rod] run function cartographer_mob_abilities:abilities/storm/mob_effect

execute unless entity @s[tag=ca.lightning_rod_only] as @a[distance=..16,limit=3,sort=random] at @s run function cartographer_mob_abilities:abilities/storm/player_effect

execute as @e[type=area_effect_cloud,tag=ca.storm_lightning_cloud,tag=!setup,distance=..24] at @s run function cartographer_mob_abilities:abilities/storm/cloud_setup

scoreboard players set $storm_delay ca.mob_var 0

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test