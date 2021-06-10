scoreboard players set @s effect_stunned 41
scoreboard players set @s damage_queue 3
execute run function cartographer_core:helper/deal_damage/by_score
execute run function cartographer_core:helper/deal_damage/invulnerable_tick