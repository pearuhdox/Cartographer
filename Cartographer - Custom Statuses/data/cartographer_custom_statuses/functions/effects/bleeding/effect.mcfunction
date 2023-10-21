scoreboard players add @s ca.bleed_time 1

execute if entity @s[tag=ca.bleeding_warmup] if score @s ca.bleed_time matches 20.. run function cartographer_custom_statuses:effects/bleeding/do_effect

execute unless score @s ca.effect_bleed matches 0 run tag @s add ca.bleeding_warmup