scoreboard players add @s[tag=!sacrificial_blood] sacrifice_stacks 1
scoreboard players set @s[tag=!sacrificial_blood,scores={sacrifice_stacks=11..}] sacrifice_stacks 10

scoreboard players add @s[tag=sacrificial_blood] brutal_stacks 1

particle minecraft:dust 0.941 0.753 0.353 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

execute as @s[scores={sacrifice_stacks=1..}] at @s store result score @s abs_health run data get entity @s AbsorptionAmount 1
execute as @s[scores={sacrifice_stacks=1..}] at @s store result entity @s AbsorptionAmount float 1 run scoreboard players operation @s abs_health += @s sacrifice_stacks 

playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:yellow_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

function cartographer_mob_abilities:death/blood/heal