scoreboard players remove @s ca.raycast 1

scoreboard players add $visible ca.deadeye 1

scoreboard players set $deadeye_hit ca.deadeye 0
execute as @e[type=#bb:hostile,dx=0,dy=0,dz=0] unless score @s ca.deadeye_time matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 as @s[type=#bb:hostile,dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity

#execute if score $deadeye_hit ca.deadeye matches 1.. if score $tempo_theft ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player

execute if score $deadeye_hit ca.deadeye matches 1.. run scoreboard players remove $piercing_ct ca.deadeye 1
execute if score $deadeye_hit ca.deadeye matches 1.. unless score $piercing_ct ca.deadeye matches 1.. run scoreboard players set @s ca.raycast 0

execute unless block ^ ^ ^1 #bb:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 0 run particle minecraft:cloud ^ ^ ^ 0 0 0 0 1 force
execute if score $visible ca.deadeye matches 2.. run particle minecraft:smoke ^ ^ ^ 0 0 0 0 1 force
execute if score @s ca.raycast matches 1.. if score $visible ca.deadeye matches 2.. run particle minecraft:smoke ^ ^ ^0.5 0 0 0 0 1 force

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast