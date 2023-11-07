scoreboard players set $explosion ca.dmg_type 1

execute at @s run tp 31182015-4512-2011-3118-115180000000 ~ ~1 ~

execute as @a[distance=..3.5] at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~180 ~ run function cartographer_mob_abilities:passive/duplicate_explosion_player 

scoreboard players set @s ca.ability_dmg 6
execute if entity @a[distance=..3.5] run function cartographer_mob_abilities:helper/damage/macro_setup
execute as @s positioned as @a[distance=..3.5] run function cartographer_mob_abilities:helper/damage/ability_magic_untethered with storage cartographer:macro.mob_abilities

execute as @e[type=#bb:hostile,distance=..3.5] at @s run function cartographer_mob_abilities:passive/duplicate_explosion_mob 

playsound minecraft:entity.generic.explode hostile @a[distance=..12] ~ ~ ~ 1 2

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900