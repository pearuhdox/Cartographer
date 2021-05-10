#setting health offset
execute store result score health= damage_queue run attribute @s minecraft:generic.max_health get
scoreboard players operation max_health= damage_queue = health= damage_queue
scoreboard players operation health= damage_queue -= @s true_health
scoreboard players operation damage= damage_queue += health= damage_queue

#setting up to initialize health
effect give @s minecraft:health_boost 1 3 true

#setting health
execute if score damage= damage_queue matches 1..15 run function cartographer_core:helper/hurt_player/true_damage/damage_intervals/1-15
execute if score damage= damage_queue matches 16..30 run function cartographer_core:helper/hurt_player/true_damage/damage_intervals/16-30
execute if score damage= damage_queue matches 31.. run function cartographer_core:helper/hurt_player/true_damage/damage_intervals/31-40

#finalization
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 63757368-0-0-0-6870

#Set a tag if the effect was supposed to kill an entity. This tag will be removed next time damage is run on the player.
execute if score damage= damage_queue >= max_health= damage_queue run tag @s add true_death