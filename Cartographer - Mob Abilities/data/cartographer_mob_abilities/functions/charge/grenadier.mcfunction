execute unless entity @s[scores={ability_charge=1..3}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=3}] run summon armor_stand ~ ~1.5 ~ {Small:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Tags:["grenadier_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1794540134,-610646290,-1585350842,353223711],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyMGZmMTczYmQxN2IyYzRmMmViMjFmM2M0YjQzODQxYTE0YjMxZGZiZmQzNTRhM2JlYzgyNjNhZjU2MmIifX19"}]}}}}]}

#Calc Damage
execute unless entity @s[scores={ability_charge=3}] run function cartographer_mob_abilities:charge/grenadier/projectile/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info grenadier.Tags

#Copy trait tags to storage
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.blazing] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.blazing"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.glacial] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.glacial"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.horrifying] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.horrifying"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.overloading] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.overloading"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.venemous] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.venemous"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.zephyrous] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.zephyrous"
execute unless entity @s[scores={ability_charge=3}] if entity @s[tag=ca.volatile] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "ca.volatile"

execute unless entity @s[scores={ability_charge=3}] run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "grenadier_projectile"

#Copy expected damage to storage
execute unless entity @s[scores={ability_charge=3}] run scoreboard players operation $grenadier_damage ca.ability_dmg = $damage ca.ability_dmg

#Save Rotation of Entity
execute unless entity @s[scores={ability_charge=3}] run tp @s ~ ~ ~ facing entity @p feet
execute unless entity @s[scores={ability_charge=3}] store result score $g_rot ca.aim run data get entity @s Rotation[0]

execute unless entity @s[scores={ability_charge=3}] as @e[tag=grenadier_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/grenadier/projectile/aim

execute unless entity @s[scores={ability_charge=3}] run playsound minecraft:item.firecharge.use hostile @a[distance=..20] ~ ~ ~ 2 0.75
execute unless entity @s[scores={ability_charge=3}] run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..20] ~ ~ ~ 1.5 1.25

execute unless entity @s[scores={ability_charge=3}] run effect give @s glowing 1 0 true
execute unless entity @s[scores={ability_charge=3}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=3}] run function cartographer_mob_abilities:abilities/grenadier