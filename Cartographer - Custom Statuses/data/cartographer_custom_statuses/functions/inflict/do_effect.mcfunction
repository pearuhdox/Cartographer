scoreboard players operation @s ca.effect_bleed += $inflict ca.effect_bleed

scoreboard players operation @s ca.effect_shock > $inflict ca.effect_shock
scoreboard players operation @s ca.effect_infect > $inflict ca.effect_infect
scoreboard players operation @s ca.effect_cloak > $inflict ca.effect_cloak

execute if score $fire ca.status_var matches 1.. store result entity @s Fire int 1 run scoreboard players get $fire ca.status_var

execute if score $inflict ca.damage_queue matches 1.. run function cartographer_custom_statuses:inflict/entropy_damage

execute if score $inflict_chance ca.effect_stun matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/stunned
execute if score $inflict_chance ca.morph_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/morphed
execute if score $inflict_chance ca.possess_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/possessed

scoreboard players add $did_linger_inflict ca.mob_var 1
