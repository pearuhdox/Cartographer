scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute if score @s ability_charge matches 1 run data modify entity @s NoAI set value 1b
execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p eyes

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


execute if score @s[tag=ca.single_wave] ability_charge matches 1 run scoreboard players add @s ability_charge 1

#execute if score @s ability_charge matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_1","ability_marker"]}
#execute if score @s ability_charge matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_2","ability_marker"]}
#execute if score @s ability_charge matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_3","ability_marker"]}

execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute if score @s ability_charge matches 11 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 21 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 1

execute if score @s[tag=ca.single_wave] ability_charge matches 11 facing entity @p eyes run function cartographer_mob_abilities:animations/rift/particles/branch
execute if score @s ability_charge matches 1 facing entity @p eyes run function cartographer_mob_abilities:animations/rift/particles/branch
execute if score @s ability_charge matches 11 run function cartographer_mob_abilities:animations/rift/particles/branch
execute if score @s ability_charge matches 21 run function cartographer_mob_abilities:animations/rift/particles/branch

execute if score @s ability_charge matches 1..21 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 31.. run function cartographer_mob_abilities:abilities/rift
