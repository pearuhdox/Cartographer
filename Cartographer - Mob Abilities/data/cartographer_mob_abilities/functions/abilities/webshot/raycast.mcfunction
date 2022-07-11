particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot/raycast

function cartographer_mob_abilities:abilities/webshot/calc_damage

execute as @a[distance=..2,tag=!webbed] run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..2,tag=!webbed] unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310211
execute as @a[distance=..2,tag=!webbed] run tag @s remove no_cdl_msg
execute as @a[distance=..2,tag=!webbed] run function cd:lib/player/damage/normal
execute as @a[distance=..2,tag=!webbed] at @s run tag @s add ability_tagged
execute as @a[distance=..2,tag=!webbed] run tag @s add webbed

execute if entity @a[distance=..2] as @a[distance=..2] at @s run setblock ~ ~ ~ minecraft:cobweb keep

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot/raycast