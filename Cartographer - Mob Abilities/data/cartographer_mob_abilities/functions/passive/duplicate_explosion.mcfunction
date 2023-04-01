scoreboard players set $explosion ca.dmg_type 1

execute at @s run tp 31182015-4512-2011-3118-115180000000 ~ ~1 ~

execute as @a[distance=..3.5] at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~180 ~ run function cartographer_mob_abilities:passive/duplicate_explosion_player 
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..3.5] run function cartographer_mob_abilities:helper/damage/ability_explosion

execute as @e[type=#bb:hostile,distance=..3.5] at @s run function cartographer_mob_abilities:passive/duplicate_explosion_mob 

playsound minecraft:delta.entity.generic.explode hostile @a[distance=..12] ~ ~ ~ 1 2

function delta:api/explosion_particle

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900