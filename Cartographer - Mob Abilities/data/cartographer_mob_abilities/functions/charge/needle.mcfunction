execute unless entity @s[scores={ability_charge=1..3}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=1..3}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=4}] run summon armor_stand ^2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile"]}
execute unless entity @s[scores={ability_charge=4}] run summon armor_stand ^-2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile"]}


#Calc Damage
execute unless entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:charge/needle/projectile/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info needle.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] unless entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:charge/needle/projectile/trait_copy

execute unless entity @s[scores={ability_charge=4}] run data modify storage cartographer_mob_abilities:info needle.Tags append value "needle_projectile"

#Copy expected damage to storage
execute unless entity @s[scores={ability_charge=4}] run scoreboard players operation $needle_damage ca.ability_dmg = $damage ca.ability_dmg

execute unless entity @s[scores={ability_charge=4}] run scoreboard players set @e[sort=random,limit=1,tag=needle_projectile,tag=!aimed] ca.lifetime -5
execute unless entity @s[scores={ability_charge=4}] as @e[tag=needle_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/needle/projectile/aim

execute unless entity @s[scores={ability_charge=3}] run effect give @s glowing 1 0 true
execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/needle