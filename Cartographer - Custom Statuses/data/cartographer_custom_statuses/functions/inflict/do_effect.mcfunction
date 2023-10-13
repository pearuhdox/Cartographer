scoreboard players operation @s ca.effect_bleed += $inflict ca.effect_bleed
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:popup/bleed
execute if score @s ca.effect_bleed matches 1.. if entity @s[tag=!ca.bleeding_warmup] run function cartographer_custom_statuses:effects/apply/vfx/bleed

scoreboard players operation @s ca.effect_shock > $inflict ca.effect_shock
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:popup/shock
execute if score @s ca.effect_shock matches 1.. if entity @s[tag=!ca.shocked_warmup] run function cartographer_custom_statuses:effects/apply/vfx/shocked

scoreboard players operation @s ca.effect_infect > $inflict ca.effect_infect
execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:popup/infect
execute if score @s ca.effect_infect matches 1.. if entity @s[tag=!ca.infect_warmup] run function cartographer_custom_statuses:effects/apply/vfx/infect

scoreboard players operation @s ca.effect_cloak > $inflict ca.effect_cloak

scoreboard players operation @s ca.effect_exposed_level > $inflict ca.effect_exposed_level
scoreboard players operation @s ca.effect_exposed_duration > $inflict ca.effect_exposed_duration

execute if score $inflict ca.effect_oiled_level matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/oiled
scoreboard players operation @s ca.effect_oiled_level > $inflict ca.effect_oiled_level
scoreboard players operation @s ca.effect_oiled_duration > $inflict ca.effect_oiled_duration


execute if score $fire ca.status_var matches 1.. store result entity @s Fire int 1 run scoreboard players get $fire ca.status_var

execute if score $inflict ca.damage_queue matches 1.. run function cartographer_custom_statuses:inflict/entropy_damage

execute if score $inflict_chance ca.effect_stun matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/stunned
execute if score $inflict_chance ca.morph_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/morphed
execute if score $inflict_chance ca.possess_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/possessed

scoreboard players add $did_linger_inflict ca.mob_var 1
