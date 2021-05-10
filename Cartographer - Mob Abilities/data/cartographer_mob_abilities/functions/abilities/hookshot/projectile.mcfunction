execute if score @s helper_lifetime matches ..6 if entity @a[distance=..1.5] positioned ~ ~ ~ run scoreboard players set @s helper_lifetime 7

execute if entity @s[scores={helper_lifetime=7}] run function cartographer_mob_abilities:abilities/hookshot/find_return
execute if entity @s[scores={helper_lifetime=7}] run tag @e[type=#cartographer_core:hostile,tag=hook_checked] remove hook_checked

execute if entity @s[scores={helper_lifetime=7}] run scoreboard players set @p[distance=..1.75] damage_queue 4
execute if entity @s[scores={helper_lifetime=7}] run effect give @p[distance=..1.75] slowness 2 2
execute if entity @s[scores={helper_lifetime=7}] run effect give @p[distance=..1.75] slow_falling 2 0
execute if entity @s[scores={helper_lifetime=7}] run execute as @p[distance=..1.75] at @s run function cartographer_core:helper/hurt_player/by_score
execute if entity @s[scores={helper_lifetime=7}] run tag @s remove can_drag
execute if entity @s[scores={helper_lifetime=7}] if entity @a[distance=..1.75] run tag @s add can_drag

execute if entity @s[scores={helper_lifetime=10}] run scoreboard players remove @s hook_travel 2
execute if entity @s[scores={helper_lifetime=10}] unless entity @a[distance=..1.75] run scoreboard players set @s helper_lifetime 20

execute if entity @s[scores={helper_lifetime=32..}] run kill @s
execute if entity @s[scores={hook_travel=..0}] run kill @s

execute if entity @s[tag=can_drag] run tp @p[distance=..1.75] ~ ~ ~

particle minecraft:block chain ~ ~1 ~ 0.25 0.25 0.25 0 20 normal

execute if entity @s[scores={helper_lifetime=1}] run tag @s add can_drag

execute if entity @s[scores={helper_lifetime=..6}] as @s at @s run tp @s ^ ^ ^2
execute if entity @s[scores={helper_lifetime=21..}] as @s at @s run tp @s ^ ^ ^1

execute if entity @s[scores={helper_lifetime=..6}] run scoreboard players add @s hook_travel 2
execute if entity @s[scores={helper_lifetime=21..}] run scoreboard players remove @s hook_travel 1

execute if entity @s[scores={helper_lifetime=..6}] as @s at @s run playsound minecraft:block.chain.place hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if entity @s[scores={helper_lifetime=21..}] as @s at @s run playsound minecraft:block.chain.place hostile @a[distance=..12] ~ ~ ~ 1 0.5

execute unless block ~ ~0.5 ~ #cartographer_core:can_raycast run kill @s