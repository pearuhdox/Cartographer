particle minecraft:block minecraft:chain ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.66 0 0 0 0 3 normal

particle minecraft:smoke ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.66 0 0 0 0 3 normal

execute positioned ^ ^ ^0.33 run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

scoreboard players set $projectile ca.dmg_type 1

execute if entity @a[distance=..2,tag=!hooked] run scoreboard players set @s ca.raycast 0
execute as @a[distance=..2,tag=!hooked] run function cartographer_mob_abilities:abilities/hookshot/player

execute as @s positioned as @a[scores={ca.damage_queue=1..},tag=!hooked,distance=..2] run function cartographer_mob_abilities:helper/damage/ability_projectile

execute if score $hook_check ca.hooked matches 101 run ride 31182015-8151-5111-3118-110000000000 mount @s

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,tag=!hooked] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,tag=!hooked,gamemode=!spectator,gamemode=!creative,distance=..18] at @s run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute as @a[distance=..2,tag=!hooked] run tag @s add hooked

execute if score @s ca.raycast matches 0 run particle minecraft:cloud ^ ^ ^1 0 0 0 0.1 10 normal

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/hookshot/raycast