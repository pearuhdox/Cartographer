execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..16] ~ ~ ~ 5 2

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_dis 23

execute unless entity @s[scores={ability_charge=1..2}] run tp @s ~ ~ ~ facing entity @p feet

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {NoAI:1}

execute unless entity @s[scores={ability_charge=1..2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["hook_marker","ability_marker"]}

execute unless entity @s[scores={ability_charge=1..2}] run tag @s add is_casting

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] as @e[type=armor_stand,tag=hook_marker,distance=..2,limit=1] at @s run tp @s ~ ~ ~ facing entity @p feet
execute unless entity @s[scores={ability_charge=1..2}] as @e[type=armor_stand,tag=hook_marker,distance=..2,limit=1] at @s run scoreboard players set @s ca.raycast 12
execute unless entity @s[scores={ability_charge=1..2}] as @e[type=armor_stand,tag=hook_marker,distance=..2,limit=1] at @s positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/hookshot/raycast

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run tag @s remove is_casting

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/hookshot