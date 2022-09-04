execute unless score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:effects/do_tick
execute if score @s ca.effect_shock matches 1.. run scoreboard players set @s cdl.damage_queue 1
execute if score @s ca.effect_shock matches 1.. run function cd:lib/mob/damage/true