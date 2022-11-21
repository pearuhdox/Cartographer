#Summon Projectiles
execute anchored eyes facing entity @p feet run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile"]}

#Calc Damage
execute run function cartographer_mob_abilities:charge/needle/projectile/calc_damage
execute run function cartographer_mob_abilities:charge/needle/projectile/calc_damage

#Clear the storage
execute run data remove storage cartographer_mob_abilities:info needle.Tags
execute run data remove storage cartographer_mob_abilities:info needle.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:charge/needle/projectile/trait_copy
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:charge/needle/projectile/trait_copy

execute run data modify storage cartographer_mob_abilities:info needle.Tags append value "needle_projectile"
execute run data modify storage cartographer_mob_abilities:info needle.Tags append value "needle_projectile"

#Copy expected damage to storage
execute run scoreboard players operation $needle_damage ca.ability_dmg = $damage ca.ability_dmg
execute run scoreboard players operation $needle_damage ca.ability_dmg = $damage ca.ability_dmg

execute as @e[tag=needle_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/needle/projectile/aim
execute as @e[tag=needle_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/needle/projectile/aim