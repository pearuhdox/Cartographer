scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $rift_vfx ability_charge 0

tag @s add rifting

function cartographer_mob_abilities:abilities/rift/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info rift.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:abilities/rift/trait_copy
data modify storage cartographer_mob_abilities:info rift.Tags append value "ca.rift_projectile"

execute unless entity @s[tag=ca.inverse] run function cartographer_mob_abilities:abilities/rift/spawn/branch
execute if entity @s[tag=ca.inverse] run function cartographer_mob_abilities:abilities/rift/spawn/inverse

data modify entity @s NoAI set value 0b

execute if entity @s[tag=ca.inverse] run scoreboard players set @s mob_move_dis 53

#execute as @e[type=area_effect_cloud,tag=rift_spot,tag=!branch_checked,distance=..18] at @s run function cartographer_mob_abilities:abilities/rift/spot_branch

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute as @a[distance=..24] at @s run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..24] ~ ~ ~ 2 1

tag @s remove rifting

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test

kill @e[type=armor_stand,tag=rift_marker,limit=3,sort=nearest]