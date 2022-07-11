particle minecraft:smoke ~ ~ ~ 0.85 0.75 0.85 0.05 15 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force

execute if entity @s[scores={ca.raycast=1}] run particle minecraft:cloud ~ ~ ~ 0 0.3 0 0.15 15 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute as @a[distance=..1.75,tag=!ran_over] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..1.75,tag=!ran_over] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310201
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s remove no_cdl_msg
execute as @a[distance=..1.75,tag=!ran_over] at @s run function cd:lib/player/damage/normal
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s add ability_tagged
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s add ran_over


tp @s ^ ^ ^0.5

execute unless block ^ ^ ^0.5 #bb:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 0 run tp @s ^ ^-0.1 ^

execute as @s[scores={ca.raycast=0}] at @s positioned ~ ~-0.5 ~ run function cartographer_mob_abilities:passive/breaker

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast if block ^ ^ ^0.5 #bb:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:abilities/charge/raycast