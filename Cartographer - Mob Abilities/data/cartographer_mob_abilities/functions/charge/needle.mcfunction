scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..4 run summon armor_stand ^2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile"]}
execute if score @s ability_charge matches 1..4 run summon armor_stand ^-2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile"]}


#Calc Damage
execute if score @s ability_charge matches 1..4 run function cartographer_mob_abilities:charge/needle/projectile/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info needle.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] if score @s ability_charge matches 1..4 run function cartographer_mob_abilities:charge/needle/projectile/trait_copy

execute if score @s ability_charge matches 1..4 run data modify storage cartographer_mob_abilities:info needle.Tags append value "needle_projectile"

#Copy expected damage to storage
execute if score @s ability_charge matches 1..4 run scoreboard players operation $needle_damage ca.ability_dmg = $damage ca.ability_dmg

execute if score @s ability_charge matches 1..4 run scoreboard players set @e[sort=random,limit=1,tag=needle_projectile,tag=!aimed] ca.lifetime -5
execute if score @s ability_charge matches 1..4 as @e[tag=needle_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/needle/projectile/aim

execute if score @s ability_charge matches 1..3 run effect give @s glowing 1 0 true

execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal


execute if score @s ability_charge matches 5 run function cartographer_mob_abilities:abilities/needle