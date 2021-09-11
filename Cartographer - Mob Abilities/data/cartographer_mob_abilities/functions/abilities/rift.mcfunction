execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 12
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 9

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $rift_vfx ability_charge 0

function cartographer_mob_abilities:abilities/rift/calc_damage

#Copy trait tags to storage
execute if entity @s[tag=ca.blazing] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.blazing"
execute if entity @s[tag=ca.glacial] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.glacial"
execute if entity @s[tag=ca.horrifying] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.horrifying"
execute if entity @s[tag=ca.overloading] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.overloading"
execute if entity @s[tag=ca.venemous] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.venemous"
execute if entity @s[tag=ca.zephyrous] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.zephyrous"
execute if entity @s[tag=ca.volatile] run data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.volatile"

data modify storage cartographer_mob_abilities:info rift.Tags append value "rift_spot"

#Copy expected damage to storage
scoreboard players operation $rift_damage ca.ability_dmg = $damage ca.ability_dmg

execute as @e[type=area_effect_cloud,tag=rift_spot,distance=..18] at @s run function cartographer_mob_abilities:abilities/rift/spot_branch
#execute as @e[type=armor_stand,tag=rift_marker,limit=5,sort=nearest,distance=..2] at @s run function cartographer_mob_abilities:abilities/rift/catch_players

#execute as @a[gamemode=!spectator,gamemode=!creative,tag=rifted,distance=..18] at @s run scoreboard players operation @s cdl.Damage_Queue = $damage ca.ability_dmg
#execute as @a[gamemode=!spectator,gamemode=!creative,tag=rifted,distance=..18] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.Death_ID 310203
#execute as @a[gamemode=!spectator,gamemode=!creative,tag=rifted,distance=..18] at @s run tag @s remove no_cdl_msg
#execute as @a[gamemode=!spectator,gamemode=!creative,tag=rifted,distance=..18] at @s run function cd:lib/player/damage/normal

#execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run setblock ~ ~ ~ minecraft:fire keep

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,tag=rifted,distance=..18] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

execute as @a[distance=..24] run tag @s remove rifted

execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test

kill @e[type=armor_stand,tag=rift_marker,limit=5,sort=nearest]