particle minecraft:block minecraft:chain ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.66 0 0 0 0 3 normal

particle minecraft:smoke ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.66 0 0 0 0 3 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..2,tag=!hooked] run scoreboard players set @s ca.raycast 0
execute as @a[distance=..2,tag=!hooked] run scoreboard players set @s ca.hooked 101
execute as @a[distance=..2,tag=!hooked] run scoreboard players set $hook_check ca.hooked 101
execute as @a[distance=..2,tag=!hooked] run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..2,tag=!hooked] unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310205
execute as @a[distance=..2,tag=!hooked] run tag @s remove no_cdl_msg
execute as @a[distance=..2,tag=!hooked] run function cd:lib/player/damage/normal

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,tag=!hooked] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,tag=!hooked,gamemode=!spectator,gamemode=!creative,distance=..18] at @s run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute as @a[distance=..2,tag=!hooked] run tag @s add hooked

execute if score @s ca.raycast matches 0 run particle minecraft:cloud ^ ^ ^1 0 0 0 0.1 10 normal

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/hookshot/raycast