scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..3 run summon armor_stand ~ ~1.5 ~ {ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["grenade_projectile"],Pose:{LeftArm:[310f,90f,0f],RightArm:[310f,270f,0f],Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1794540134,-610646290,-1585350842,353223711],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyMGZmMTczYmQxN2IyYzRmMmViMjFmM2M0YjQzODQxYTE0YjMxZGZiZmQzNTRhM2JlYzgyNjNhZjU2MmIifX19'}]}}}}]}

#Calc Damage
execute if score @s ability_charge matches 1..3 run function cartographer_mob_abilities:charge/grenadier/projectile/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info grenadier.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] if score @s ability_charge matches 1..3 run function cartographer_mob_abilities:charge/grenadier/projectile/trait_copy

execute if score @s ability_charge matches 1..3 run data modify storage cartographer_mob_abilities:info grenadier.Tags append value "grenade_projectile"

#Copy expected damage to storage
execute if score @s ability_charge matches 1..3 run scoreboard players operation $grenadier_damage ca.ability_dmg = $damage ca.ability_dmg

#Save Rotation of Entity
execute if score @s ability_charge matches 1..3 run tp @s ~ ~ ~ facing entity @p feet
execute if score @s ability_charge matches 1..3 store result score $g_rot ca.aim run data get entity @s Rotation[0]

execute if score @s ability_charge matches 1..3 as @e[tag=grenade_projectile,tag=!aimed] at @s run function cartographer_mob_abilities:charge/grenadier/projectile/aim

execute if score @s ability_charge matches 1..3 run playsound minecraft:item.firecharge.use hostile @a[distance=..20] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 1..3 run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..20] ~ ~ ~ 1.5 1.25

execute if score @s ability_charge matches 1..3 run effect give @s glowing 1 0 true

execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..3 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

execute if score @s ability_charge matches 4 run function cartographer_mob_abilities:abilities/grenadier