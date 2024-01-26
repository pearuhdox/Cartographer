scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute unless block ^ ^ ^0.5 #bb:can_raycast run scoreboard players set @s ca.raycast 0

#Ending particle
execute if score @s ca.raycast matches 0 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 12 normal

particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 1 normal

#Run effects on mobs. Don't run them additionally if they've already been hit.
execute positioned ~ ~ ~ as @e[type=#bb:hostile,tag=!thrusted,dx=0,nbt={HurtTime:0s}] positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] at @s run function cartographer_custom_enchantments:enchant_effects/thrusting/effects with storage cartographer:macro.custom_enchantments

#Run the raycast again.
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/thrusting/raycast