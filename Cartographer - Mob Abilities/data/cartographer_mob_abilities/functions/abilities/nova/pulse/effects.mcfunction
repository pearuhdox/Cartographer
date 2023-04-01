tp 31182015-4512-2011-3118-115180000000 ~ ~4 ~

execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..4.5] at @s facing entity 31182015-4512-2011-3118-115180000000 feet run function cartographer_mob_abilities:abilities/nova/pulse/player

execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..4.5] run function cartographer_mob_abilities:helper/damage/ability_projectile

scoreboard players set $zeph_check ca.mob_var 0

#execute as @a[gamemode=!spectator,gamemode=!creative,distance=..4] at @s run setblock ~ ~ ~ minecraft:fire keep

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..4.5] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..4.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

function cartographer_mob_abilities:abilities/nova/pulse/vfx

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900