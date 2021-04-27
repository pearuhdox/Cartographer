execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.2 ~ 1.2 0 1.2 0.2 50

playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 2 1

data merge entity @s {NoAI:0}

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] run scoreboard players set @s cooldown 1
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2] at @s run scoreboard players set @s damage_queue 4
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @s at @s positioned ^ ^ ^3 run execute as @a[distance=..2] at @s run effect give @s blindness 2 0

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run data modify storage ca.disarm:space Weapon set from entity @s SelectedItem
execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] run data modify entity @s HandItems[0] set from storage ca.disarm:space Weapon

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] at @s run tag @s remove disarm
execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] at @s run tag @s add used_disarm

execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add smash 
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add smash 
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add smash 
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add smash 
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add smash
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run tag @s add smash 

execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow"}}] run tag @s add trapper 
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:crossbow"}}] run tag @s add trapper
execute as @s at @s positioned ^ ^ ^3 run execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:trident"}}] run tag @s add trapper 

execute as @s at @s positioned ^ ^ ^3 if entity @a[distance=..2] as @s[tag=!smash,tag=!trapper] at @s positioned ^ ^ ^3 run tag @s add sweep

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t