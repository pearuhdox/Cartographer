scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute unless block ^ ^ ^0.5 #bb:can_raycast run scoreboard players set @s ca.raycast 0

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Run Cauterize if it exists
execute if score $cauterize ca.thrusting matches 1 as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.thrusting matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.thrusting matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.thrusting matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.thrusting matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.thrusting matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $frostbite ca.thrusting
execute if score $frostbite ca.thrusting matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.thrusting
execute if score $executioner ca.thrusting matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Ending particle
execute if score @s ca.raycast matches 0 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 12 normal

#Run effects on mobs. Don't run them additionally if they've already been hit.
execute positioned ~ ~ ~ as @e[type=#bb:hostile,tag=!thrusted,dx=0,nbt={HurtTime:0s}] positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] at @s run function cartographer_custom_enchantments:enchant_effects/thrusting/effects with storage cartographer:macro.custom_enchantments

#Run the raycast again.
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/thrusting/raycast