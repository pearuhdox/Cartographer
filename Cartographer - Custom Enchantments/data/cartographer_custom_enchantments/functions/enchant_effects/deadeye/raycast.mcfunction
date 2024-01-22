particle minecraft:smoke ^ ^ ^0.25 0 0 0 0 1 force
particle minecraft:smoke ^ ^ ^0.75 0 0 0 0 1 force

execute as @e[type=#bb:hostile,dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 as @s[type=#bb:hostile,dx=0,dy=0,dz=0] at @s unless entity @s[tag=ca.deadeye_hit] run function cartographer_custom_enchantments:enchant_effects/deadeye/hit

execute if score $hit ca.deadeye matches 1.. unless score $pierce ca.deadeye matches 1.. run scoreboard players set @s ca.raycast 0
execute if score $hit ca.deadeye matches 1.. run scoreboard players remove $pierce ca.raycast 1

scoreboard players remove @s ca.raycast 1
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast