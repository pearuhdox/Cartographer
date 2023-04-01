particle minecraft:dust 0.1 0.1 0.1 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal
particle minecraft:sonic_boom ~ ~ ~ 0.15 0.15 0.15 1 1 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s ca.raycast 0

scoreboard players set $laser_detonate ca.var 0
scoreboard players set $laser_blocked ca.var 0

function cartographer_mob_abilities:abilities/laser/calc_damage

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^1 unless block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:abilities/laser/if_block
execute unless score $laser_detonate ca.var matches 1 if entity @s[scores={ca.raycast=0}] positioned ^ ^ ^ run function cartographer_mob_abilities:abilities/laser/if_player

execute if score $laser_detonate ca.var matches 1 as @e[type=creeper,tag=laser_explosion,distance=..4] at @s run function cartographer_mob_abilities:abilities/laser/set_and_run_traits
execute if score $laser_detonate ca.var matches 1 as @a[distance=..4] at @s run function cartographer_mob_abilities:abilities/laser/at_player
execute if score $laser_detonate ca.var matches 1 positioned as @a[scores={ca.damage_queue=1..},distance=..4] run function cartographer_mob_abilities:helper/damage/ability_explosion
execute if score $laser_detonate ca.var matches 1 unless score $laser_blocked ca.var matches 1.. positioned as @s run function cartographer_mob_abilities:ability_traits/call_all_traits_hit
execute if score $laser_detonate ca.var matches 1 positioned as @s run tag @a[distance=..32] remove ability_tagged

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:abilities/laser/raycast