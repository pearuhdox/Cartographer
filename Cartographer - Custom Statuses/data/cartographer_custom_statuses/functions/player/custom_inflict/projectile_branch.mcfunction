execute if entity @s[type=#bb:arrow] on passengers run function cartographer_custom_statuses:player/custom_inflict/projectile_data

execute if entity @s[type=trident] run function cartographer_custom_statuses:player/custom_inflict/get_trident_data

execute on origin run tag @s add ca.inflict_cause

scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy