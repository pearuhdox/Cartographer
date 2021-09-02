execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

execute positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.2 ~ 1.2 0 1.2 0.2 50

playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 2 1

data merge entity @s {NoAI:0}

function cartographer_mob_abilities:abilities/disarm/calc_damage

execute positioned ^ ^ ^3 if entity @a[distance=..2] run scoreboard players set @s cooldown 1
execute positioned ^ ^ ^3 as @a[distance=..2] at @s run scoreboard players operation @s cdl.Damage_Queue = $damage ca.ability_dmg
execute positioned ^ ^ ^3 as @a[distance=..2] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.Death_ID 310202
execute positioned ^ ^ ^3 as @a[distance=..2] at @s run tag @s remove no_cdl_msg
execute positioned ^ ^ ^3 as @a[distance=..2] at @s run function cd:lib/player/damage/normal
execute positioned ^ ^ ^3 as @a[distance=..2] at @s run effect give @s blindness 2 0


execute positioned ^ ^ ^3 as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s run tag @s add ability_tagged

execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..7] at @s run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..7] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

execute positioned ^ ^ ^3 if entity @a[distance=..2] as @a[distance=..2] at @s run data modify storage ca.disarm:space Weapon set from entity @s SelectedItem
execute positioned ^ ^ ^3 if entity @a[distance=..2] run data modify entity @s HandItems[0] set from storage ca.disarm:space Weapon

execute positioned ^ ^ ^3 if entity @a[distance=..2] at @s run tag @s remove ca.disarm
execute positioned ^ ^ ^3 if entity @a[distance=..2] at @s run tag @s add used_disarm

execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run tag @s add smash 
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run tag @s add smash 
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run tag @s add smash 
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add smash 
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run tag @s add smash
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run tag @s add smash 

execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow"}}] run tag @s add trapper 
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:crossbow"}}] run tag @s add trapper
execute positioned ^ ^ ^3 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:trident"}}] run tag @s add trapper 

execute positioned ^ ^ ^3 if entity @a[distance=..2] as @s[tag=!smash,tag=!trapper] at @s positioned ^ ^ ^3 run tag @s add sweep

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player