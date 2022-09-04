execute unless score @s ca.effect_shock matches 1.. run scoreboard players set @s cdl.damage_queue 1
execute if score @s ca.effect_shock matches 1.. run scoreboard players set @s cdl.damage_queue 2
function cd:lib/mob/damage/true
function cartographer_custom_statuses:effects/do_tick

execute unless score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:effects/shocked/volt_throw

say test