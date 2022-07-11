execute if score $melee ca.hunter matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee ca.hunter matches 1 as @s run scoreboard players set @s cdl.damage_queue 2
execute if score $melee ca.hunter matches 2 as @s run scoreboard players set @s cdl.damage_queue 5
execute if score $melee ca.hunter matches 3 as @s run scoreboard players set @s cdl.damage_queue 7
execute if score $melee ca.hunter matches 4 as @s run scoreboard players set @s cdl.damage_queue 10
execute if score $melee ca.hunter matches 5 as @s run scoreboard players set @s cdl.damage_queue 12

execute if score $melee ca.hunter matches 1.. as @s run function cd:lib/mob/damage/true

execute if score $melee ca.hunter matches 1 as @s run function cd:func/mob_damage_true/half
execute if score $melee ca.hunter matches 3 as @s run function cd:func/mob_damage_true/half
execute if score $melee ca.hunter matches 5 as @s run function cd:func/mob_damage_true/half