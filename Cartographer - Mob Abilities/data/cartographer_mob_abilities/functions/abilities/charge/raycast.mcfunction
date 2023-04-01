particle minecraft:smoke ~ ~ ~ 0.85 0.75 0.85 0.05 15 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force
execute positioned ~ ~ ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

execute if entity @s[scores={ca.raycast=1}] run particle minecraft:cloud ~ ~ ~ 0 0.3 0 0.15 15 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute rotated ~ 0 run tp 31182015-4512-2011-3118-115180000000 ^ ^1 ^4

execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

execute as @a[distance=..1.75,tag=!ran_over] at @s facing entity 31182015-4512-2011-3118-115180000000 feet run function cartographer_mob_abilities:abilities/charge/player

execute as @s positioned as @a[scores={ca.damage_queue=1..}] run function cartographer_mob_abilities:helper/damage/ability_melee

scoreboard players set $zeph_check ca.mob_var 0

tp @s ^ ^ ^0.5

execute unless block ^ ^ ^0.5 #bb:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 0 run tp @s ^ ^-0.1 ^


execute as @s[scores={ca.raycast=0}] at @s positioned ~ ~-0.5 ~ run function cartographer_mob_abilities:passive/breaker

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast if block ^ ^ ^0.5 #bb:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:abilities/charge/raycast

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900