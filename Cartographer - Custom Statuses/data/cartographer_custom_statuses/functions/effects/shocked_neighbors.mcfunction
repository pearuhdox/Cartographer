execute unless entity @s[tag=shocked_tick] run scoreboard players set @s damage_queue 1
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/by_score
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/invulnerable_tick
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/push_third
execute unless entity @s[tag=shocked_tick] run tag @s add shocked_tick
