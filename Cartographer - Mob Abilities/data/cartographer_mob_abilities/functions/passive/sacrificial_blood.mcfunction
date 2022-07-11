scoreboard players add @e[type=#bb:hostile,tag=!sacrificial_blood,distance=..16] sacrifice_stacks 1
scoreboard players set @e[type=#bb:hostile,tag=!sacrificial_blood,distance=..16,scores={sacrifice_stacks=11..}] sacrifice_stacks 10

scoreboard players add @e[type=#bb:hostile,tag=sacrificial_blood,distance=..16] brutal_stacks 1

execute as @e[type=#bb:hostile,distance=..16] at @s run particle minecraft:dust 0.941 0.753 0.353 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

execute as @e[type=#bb:hostile,distance=..16,scores={sacrifice_stacks=1..}] at @s store result score @s abs_health run data get entity @s AbsorptionAmount 1
execute as @e[type=#bb:hostile,distance=..16,scores={sacrifice_stacks=1..}] at @s store result entity @s AbsorptionAmount float 1 run scoreboard players operation @s abs_health += @s sacrifice_stacks 

effect give @e[type=#bb:hostile,type=#bb:undead,distance=..16] instant_damage 1 0
effect give @e[type=#bb:hostile,type=!#bb:undead,distance=..16] instant_health 1 0


playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:yellow_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

kill @s