#Apply Effects
execute store result score $add ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Amount
scoreboard players operation @s ca.effect_bleed += $add ca.effect_bleed

execute store result score $add ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Duration
scoreboard players operation @s ca.effect_shock > $add ca.effect_shock

execute store result score $add ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration
execute if score $add ca.effect_infect matches 1.. run scoreboard players add $add ca.effect_infect 1
scoreboard players operation @s ca.effect_infect > $add ca.effect_infect

#Stun
execute store result score $inflict ca.effect_stun run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stun"}].Duration
scoreboard players operation $inflict ca.effect_stun *= $20 ca.CONSTANT

execute store result score $chance ca.effect_stun run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stun"}].Chance

execute if score $inflict ca.effect_stun matches 1.. run function cartographer_custom_statuses:status_inflict/apply/stunned

#Morph
execute store result score $chance ca.morph_time run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"morph"}].Chance

execute if score $chance ca.morph_time matches 1.. run function cartographer_custom_statuses:status_inflict/apply/morphed

#Possession
execute store result score $chance ca.possess_time run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"possession"}].Chance

execute if score $chance ca.possess_time matches 1.. run function cartographer_custom_statuses:status_inflict/apply/possessed


execute store result score @s ca.effect_cloak run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"cloaking"}].Duration
scoreboard players operation @s ca.effect_cloak > $add ca.effect_cloak

#Expose
execute store result score @s ca.effect_exposed_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Duration
scoreboard players operation @s ca.effect_exposed_duration *= $20 ca.CONSTANT
scoreboard players operation @s ca.effect_exposed_duration > $add ca.effect_exposed_duration

execute store result score @s ca.effect_exposed_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Amplifier
scoreboard players operation @s ca.effect_exposed_level > $add ca.effect_exposed_level
