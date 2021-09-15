execute unless entity @s[scores={ability_charge=1..3}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=4}] run summon armor_stand ^2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["needle_projectile"]}
execute unless entity @s[scores={ability_charge=4}] run summon armor_stand ^-2 ^1 ^-2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["needle_projectile"]}

#Calc Damage
execute unless entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:charge/needle/projectile/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info needle.Tags

#Copy trait tags to storage
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.blazing] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.blazing"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.glacial] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.glacial"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.horrifying] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.horrifying"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.overloading] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.overloading"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.venemous] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.venemous"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.zephyrous] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.zephyrous"
execute unless entity @s[scores={ability_charge=4}] if entity @s[tag=ca.volatile] run data modify storage cartographer_mob_abilities:info needle.Tags append value "ca.volatile"

execute unless entity @s[scores={ability_charge=4}] run data modify storage cartographer_mob_abilities:info needle.Tags append value "needle_projectile"

#Copy expected damage to storage
execute unless entity @s[scores={ability_charge=4}] run scoreboard players operation $needle_damage ca.ability_dmg = $damage ca.ability_dmg

execute unless entity @s[scores={ability_charge=4}] run scoreboard players set @e[sort=random,limit=1,tag=needle_projectile,tag=!aimed] ca.lifetime -5
execute unless entity @s[scores={ability_charge=4}] as @e[tag=needle_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/needle/projectile/aim

execute unless entity @s[scores={ability_charge=3}] run effect give @s glowing 1 0 true
execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/needle