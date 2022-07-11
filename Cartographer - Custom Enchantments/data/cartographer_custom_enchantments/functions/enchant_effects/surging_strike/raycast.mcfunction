scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute unless block ^ ^ ^0.5 #bb:can_raycast run scoreboard players set @s ca.raycast 0

execute unless score $melee ca.fire_aspect matches 1.. unless score $melee ca.frostbite matches 1.. unless score $melee ca.exposing matches 1.. unless score $melee ca.infection matches 1.. unless score $melee ca.electrocute matches 1.. unless score $melee ca.bleeding matches 1.. unless score @s ca.raycast matches 0 run particle minecraft:dust 0.875 0.875 0.875 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute unless score $melee ca.fire_aspect matches 1.. unless score $melee ca.frostbite matches 1.. unless score $melee ca.exposing matches 1.. unless score $melee ca.infection matches 1.. unless score $melee ca.electrocute matches 1.. unless score $melee ca.bleeding matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.875 0.875 0.875 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.fire_aspect matches 1.. run particle minecraft:dust 0.973 0.518 0.251 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.fire_aspect matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.973 0.518 0.251 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.frostbite matches 1.. run particle minecraft:dust 0.196 0.659 0.773 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.frostbite matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.196 0.659 0.773 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.exposing matches 1.. run particle minecraft:dust 0.157 0.612 0.514 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.exposing matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.157 0.612 0.514 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.infection matches 1.. run particle minecraft:dust 0.1 0 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.infection matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.1 0 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.electrocute matches 1.. run particle minecraft:dust 0.518 0.929 1 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.electrocute matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.518 0.929 1 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

execute if score $melee ca.bleeding matches 1.. run particle minecraft:dust 0.431 0.055 0.055 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal
execute if score $melee ca.bleeding matches 1.. positioned ^ ^ ^-0.25 run particle minecraft:dust 0.431 0.055 0.055 0.5 ~ ~ ~ 0.2 0.2 0.2 0.025 10 normal

#Ending particle
execute if score @s ca.raycast matches 0 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 12 normal

#Run effects on mobs. Don't run them additionally if they've already been hit.
execute positioned ~ ~ ~ as @e[type=#bb:hostile,tag=!thrusted,dx=0,nbt={HurtTime:0s}] positioned ~-0.59 ~-0.59 ~-0.59 if entity @s[dx=0] at @s run function cartographer_custom_enchantments:enchant_effects/surging_strike/effects

#Run the raycast again.
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/surging_strike/raycast