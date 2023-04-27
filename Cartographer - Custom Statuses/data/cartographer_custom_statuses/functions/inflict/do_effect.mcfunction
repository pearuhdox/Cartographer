scoreboard players operation @s ca.effect_bleed = $inflict ca.effect_bleed
scoreboard players operation @s ca.bleed_potency += $inflict ca.bleed_potency
scoreboard players operation @s ca.effect_shock = $inflict ca.effect_shock
scoreboard players operation @s ca.effect_stun = $inflict ca.effect_stun
scoreboard players operation @s ca.effect_infect = $inflict ca.effect_infect
scoreboard players operation @s ca.effect_cloak = $inflict ca.effect_cloak

execute if score $inflict ca.damage_queue matches 1.. run function cartographer_custom_statuses:inflict/entropy_damage

scoreboard players add $did_linger_inflict ca.mob_var 1
