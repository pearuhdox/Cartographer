execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310203
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run tag @s remove no_cdl_msg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run tag @s add ca.pull
execute rotated ~ 0 positioned ^ ^ ^1 facing entity @s feet rotated ~ 0 positioned as @s as @a[gamemode=!spectator,gamemode=!creative,distance=..8] positioned as @s run function cartographer_core:helper/damage_knockback/targeting_direction

#execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run setblock ~ ~ ~ minecraft:fire keep

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..8] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..8] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

function cartographer_mob_abilities:abilities/nova/normal/vfx