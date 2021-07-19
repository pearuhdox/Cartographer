particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast

function cartographer_mob_abilities:abilities/webshot/calc_damage

execute as @a[distance=..2,tag=!webbed] run scoreboard players set @s cdl.Damage_Queue 6
execute as @a[distance=..2,tag=!webbed] run scoreboard players set @s cdl.Death_ID 310211
execute as @a[distance=..2,tag=!webbed] run function cd:lib/player/damage/normal
execute as @a[distance=..2,tag=!webbed] run tag @s add webbed

execute if entity @a[distance=..2] as @a[distance=..2] at @s run setblock ~ ~ ~ minecraft:cobweb keep

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast