summon minecraft:evoker_fangs ~ ~ ~ {Warmup:1000000,Tags:["from_evocation"],Passengers:[{id:"minecraft:marker",Tags:["ca.evocation_store_marker"]}]}

execute store result score $time ca.evocation run data get entity @s WaitTime 1

#execute if score $evocation ca.evocation matches 1 run scoreboard players add $time ca.evocation 20
#execute if score $evocation ca.evocation matches 2 run scoreboard players add $time ca.evocation 10
scoreboard players add $time ca.evocation 5

execute store result entity @s WaitTime int 1 run scoreboard players add $time ca.evocation 0

execute as @e[type=evoker_fangs,limit=1,sort=nearest,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/branch_fang

particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal



kill @s