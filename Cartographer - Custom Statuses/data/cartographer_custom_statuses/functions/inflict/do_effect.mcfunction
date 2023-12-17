execute unless score $inflict_chance ca.effect_bleed matches 1.. run scoreboard players set $inflict_chance ca.effect_bleed 100
execute unless score $inflict_chance ca.effect_shock matches 1.. run scoreboard players set $inflict_chance ca.effect_shock 100
execute unless score $inflict_chance ca.effect_infect matches 1.. run scoreboard players set $inflict_chance ca.effect_infect 100
execute unless score $inflict_chance ca.effect_exposed_duration matches 1.. run scoreboard players set $inflict_chance ca.effect_exposed_duration 100
execute unless score $inflict_chance ca.effect_oiled_duration matches 1.. run scoreboard players set $inflict_chance ca.effect_oiled_duration 100
execute unless score $inflict_chance ca.effect_shackled matches 1.. run scoreboard players set $inflict_chance ca.effect_shackled 100
execute unless score $inflict_chance ca.effect_brittle_duration matches 1.. run scoreboard players set $inflict_chance ca.effect_brittle_duration 100

#execute unless score $inflict_chance ca.effect_stun matches 1.. run scoreboard players set $inflict_chance ca.effect_stun 100
#execute unless score $inflict_chance ca.morph_time matches 1.. run scoreboard players set $inflict_chance ca.morph_time 100
#execute unless score $inflict_chance ca.charm_time matches 1.. run scoreboard players set $inflict_chance ca.charm_time 100

execute if score $inflict ca.effect_bleed matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/bleeding
execute if score $inflict ca.effect_shock matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/shocked
execute if score $inflict ca.effect_infect matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/infection
execute if score $inflict ca.effect_exposed_duration matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/exposed
execute if score $inflict ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/oiled
execute if score $inflict ca.effect_shackled matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/shackled
execute if score $inflict ca.effect_brittle_duration matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/brittle

execute if score $inflict_chance ca.effect_stun matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/stunned

execute if score $inflict_time ca.morph_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/morphed
execute if score $inflict_time ca.charm_time matches 1.. run function cartographer_custom_statuses:inflict/chance_statuses/charmed


scoreboard players operation @s ca.effect_cloak > $inflict ca.effect_cloak


execute if score $fire ca.status_var matches 1.. store result entity @s Fire int 1 run scoreboard players get $fire ca.status_var

scoreboard players set $did_linger_inflict ca.var 1


#If the potion also had normal effects, we apply those too
execute if data storage cartographer_custom_statuses:infliction data.custom_potion_effects[0] run function cartographer_custom_statuses:inflict/apply_effects