execute if entity @s[tag=ca.shocked_warmup] run function cartographer_custom_statuses:effects/shocked/do_effect

execute unless score @s ca.effect_shock matches 0 run tag @s add ca.shocked_warmup