execute if score $melee ca.singe matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee ca.singe matches 1 as @s run scoreboard players set @s cdl.Damage_Queue 2
execute if score $melee ca.singe matches 2 as @s run scoreboard players set @s cdl.Damage_Queue 5
execute if score $melee ca.singe matches 3 as @s run scoreboard players set @s cdl.Damage_Queue 7
execute if score $melee ca.singe matches 4 as @s run scoreboard players set @s cdl.Damage_Queue 10
execute if score $melee ca.singe matches 5 as @s run scoreboard players set @s cdl.Damage_Queue 12

execute if score $melee ca.singe matches 1.. as @s run function cd:lib/mob/damage/true

execute if score $melee ca.singe matches 1 as @s run function cd:func/mob_damage_true/half
execute if score $melee ca.singe matches 3 as @s run function cd:func/mob_damage_true/half
execute if score $melee ca.singe matches 5 as @s run function cd:func/mob_damage_true/half