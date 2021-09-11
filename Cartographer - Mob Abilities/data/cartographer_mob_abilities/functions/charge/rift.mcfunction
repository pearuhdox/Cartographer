execute unless entity @s[scores={ability_charge=1..3}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings
execute unless entity @s[scores={ability_charge=1..3}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_move_dis 53
execute unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_sturdy 53

execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_1","ability_marker"]}
execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_2","ability_marker"]}
execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_3","ability_marker"]}

execute unless entity @s[scores={ability_charge=1..3}] rotated ~ 0 run tp @e[tag=rift_marker_1,distance=..2,limit=1] ~ ~ ~ ~ ~
execute unless entity @s[scores={ability_charge=1..3}] rotated ~120 0 run tp @e[tag=rift_marker_2,distance=..2,limit=1] ~ ~ ~ ~ ~
execute unless entity @s[scores={ability_charge=1..3}] rotated ~240 0 run tp @e[tag=rift_marker_3,distance=..2,limit=1] ~ ~ ~ ~ ~


execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 1


execute unless entity @s[scores={ability_charge=1..3}] as @e[tag=rift_marker,sort=nearest,limit=5,distance=..2] at @s run function cartographer_mob_abilities:charge/rift/marker_branch

scoreboard players set $rift_vfx ability_charge 0
execute if entity @s[scores={ability_charge=1..3}] run scoreboard players set $rift_vfx ability_charge 1

execute unless entity @s[scores={ability_charge=3}] run effect give @s glowing 1 0 true
execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/rift
execute if entity @s[scores={ability_charge=4}] run kill @e[tag=rift_marker]
