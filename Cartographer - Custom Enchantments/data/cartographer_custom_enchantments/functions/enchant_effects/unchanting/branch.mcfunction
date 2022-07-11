execute if score $melee ca.unchanting matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee ca.unchanting matches 1 run scoreboard players set @s cdl.damage_queue 2
execute if score $melee ca.unchanting matches 2 run scoreboard players set @s cdl.damage_queue 5
execute if score $melee ca.unchanting matches 3 run scoreboard players set @s cdl.damage_queue 7
execute if score $melee ca.unchanting matches 4 run scoreboard players set @s cdl.damage_queue 10
execute if score $melee ca.unchanting matches 5.. run scoreboard players set @s cdl.damage_queue 12

execute if score $melee ca.unchanting matches 1.. run function cd:lib/mob/damage/true

execute if score $melee ca.unchanting matches 1 run function cd:func/mob_damage_true/half
execute if score $melee ca.unchanting matches 3 run function cd:func/mob_damage_true/half
execute if score $melee ca.unchanting matches 5.. run function cd:func/mob_damage_true/half