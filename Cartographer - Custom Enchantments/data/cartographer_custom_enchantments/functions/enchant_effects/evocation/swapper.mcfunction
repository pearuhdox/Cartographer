summon minecraft:evoker_fangs ~ ~ ~ {Warmup:1000000,Tags:["from_evocation"],Passengers:[{id:"minecraft:marker",Tags:["ca.evocation_store_marker"]}]}

execute store result score $time ca.evocation run data get entity @s WaitTime 1

execute if score $evocation ca.evocation matches 1 run scoreboard players add $time ca.evocation 20
execute if score $evocation ca.evocation matches 2 run scoreboard players add $time ca.evocation 10

scoreboard players operation $fire_aspect ca.evocation = @s ca.fire_aspect
scoreboard players operation $frostbite ca.evocation = @s ca.frostbite
scoreboard players operation $knockback ca.evocation = @s ca.knockback

execute store result entity @s WaitTime int 1 run scoreboard players add $time ca.evocation 0

execute as @e[type=evoker_fangs,limit=1,sort=nearest,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/branch_fang

execute unless entity @s[scores={ca.frostbite=1..}] unless entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.2 ~ 0.25 0 0.25 0 20 normal
execute unless entity @s[scores={ca.frostbite=1..}] unless entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 30 normal

execute if entity @s[scores={ca.frostbite=1..}] run particle minecraft:item_snowball ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.frostbite=1..}] run particle minecraft:item_snowball ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:flame ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:flame ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

kill @s