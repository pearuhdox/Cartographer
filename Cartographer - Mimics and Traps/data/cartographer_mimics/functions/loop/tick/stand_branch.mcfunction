#execute unless block ~ ~ ~ air run function cartographer_mimics:mimic/loot_setup


execute if block ~ ~ ~ air run scoreboard players set $mimic_broken setup 1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..0.8,nbt={inGround:1b}] run scoreboard players set $mimic_broken setup 1

execute if entity @a[gamemode=!creative,distance=..6,scores={helper_open_trap=1..},nbt=!{ActiveEffects:[{Id:14}]},predicate=!cartographer_mimics:mimic_disguised] run scoreboard players set $mimic_tripped setup 1

#execute if score $mimic_broken setup matches 1.. run function cartographer_mimics:mimic/summon
#execute if score $mimic_tripped setup matches 1.. run function cartographer_mimics:mimic/summon

scoreboard players set $mimic_double setup 0

#execute if score $mimic_broken setup matches 1.. run tag @s add triggered_mimic
#execute if score $mimic_tripped setup matches 1.. run tag @s add triggered_mimic

#execute if score $mimic_broken setup matches 1.. run kill @s
#execute if score $mimic_tripped setup matches 1.. run kill @s

scoreboard players set $mimic_broken setup 0
scoreboard players set $mimic_tripped setup 0