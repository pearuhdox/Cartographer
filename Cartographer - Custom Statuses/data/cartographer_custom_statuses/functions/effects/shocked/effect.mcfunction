scoreboard players operation $shock_mod ca.status_var = @s ca.effect_shock
scoreboard players operation $shock_mod ca.status_var %= $20 ca.CONSTANT


execute if entity @s[tag=ca.shocked_warmup] if score $shock_mod ca.status_var matches 2 run function cartographer_custom_statuses:effects/shocked/do_effect

scoreboard players remove @s ca.effect_shock 1

execute if score @s ca.effect_shock matches 0 run function cartographer_custom_statuses:effects/shocked/clean_effects
execute unless score @s ca.effect_shock matches 0 run tag @s add ca.shocked_warmup