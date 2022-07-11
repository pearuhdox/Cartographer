#Trait warning visual
function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 12
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 9

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @e[tag=laser_marker,distance=..1,limit=1] ca.raycast 32

execute store result score $laser ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players set $laser_bla ca.var 0
scoreboard players set $laser_gla ca.var 0
scoreboard players set $laser_ove ca.var 0
scoreboard players set $laser_ven ca.var 0
scoreboard players set $laser_zep ca.var 0
scoreboard players set $laser_hor ca.var 0
scoreboard players set $laser_vol ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $laser_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $laser_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $laser_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $laser_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $laser_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $laser_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $laser_vol ca.var 1

execute as @e[tag=laser_marker,distance=..1,limit=1] at @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/laser/raycast

#Run non onhit traits
function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.

kill @e[type=armor_stand,tag=laser_marker,distance=..1,limit=1]

scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test