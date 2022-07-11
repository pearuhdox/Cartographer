execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 6

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.raycast 21

function cartographer_mob_abilities:abilities/charge/calc_damage

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/charge/raycast

#Trait Effects (outside of raycast call)
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

execute as @a[distance=..16] run tag @s remove ran_over

data merge entity @s {NoAI:0}

execute as @a[distance=..16] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~ 2 2

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test

kill @e[type=armor_stand,tag=charge_marker,limit=1,sort=nearest]