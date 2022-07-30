
execute if score $melee ca.first_strike matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal
execute if score $melee ca.first_strike matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..12] ~ ~ ~ 1 1.5

execute if score $melee ca.first_strike matches 1 run scoreboard players set @s cdl.damage_queue 4
execute if score $melee ca.first_strike matches 2 run scoreboard players set @s cdl.damage_queue 8
execute if score $melee ca.first_strike matches 3.. run scoreboard players set @s cdl.damage_queue 12

execute if score $melee ca.first_strike matches 1.. run function cd:lib/mob/damage/true