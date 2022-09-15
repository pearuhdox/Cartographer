execute unless entity @s[scores={ability_charge=1..3}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings
execute unless entity @s[scores={ability_charge=1..3}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_move_dis 53
execute unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_sturdy 53

execute unless entity @s[scores={ability_charge=1..3}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


execute if entity @s[tag=ca.inverse_rift] unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_move_dis 63
execute if entity @s[tag=ca.inverse_rift] unless entity @s[scores={ability_charge=1..3}] run scoreboard players set @s mob_sturdy 63

execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_1","ability_marker"]}
execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_2","ability_marker"]}
execute unless entity @s[scores={ability_charge=1..3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["rift_marker","rift_marker_3","ability_marker"]}

execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 1

execute unless entity @s[scores={ability_charge=1..3}] run scoreboard players set $rift_mode ca.var 1
execute unless entity @s[scores={ability_charge=1..3}] if entity @s[tag=ca.instant_rift] run scoreboard players set $rift_mode ca.var 2
execute unless entity @s[scores={ability_charge=1..3}] if entity @s[tag=ca.inverse_rift] run scoreboard players set $rift_mode ca.var 3

execute unless entity @s[scores={ability_charge=1..3}] positioned ~ ~ ~ rotated ~ 0 as @e[tag=rift_marker,sort=nearest,limit=3,distance=..2] run function cartographer_mob_abilities:charge/rift/marker_branch
execute unless entity @s[scores={ability_charge=1..3}] as @e[type=area_effect_cloud,distance=..18,tag=rift_spot,tag=!checked] at @s run function cartographer_mob_abilities:charge/rift/spot_recurse_start

scoreboard players set $rift_vfx ability_charge 0
execute if entity @s[scores={ability_charge=1..3}] run scoreboard players set $rift_vfx ability_charge 1

execute unless entity @s[scores={ability_charge=3}] run effect give @s glowing 1 0 true
execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/rift
execute if entity @s[scores={ability_charge=4}] run kill @e[tag=rift_marker]
