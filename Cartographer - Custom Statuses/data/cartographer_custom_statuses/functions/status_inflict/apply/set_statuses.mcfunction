#Apply Effects
scoreboard players set $chance ca.effect_bleed 0
scoreboard players set $chance ca.effect_shock 0
scoreboard players set $chance ca.effect_infect 0
scoreboard players set $chance ca.effect_exposed_duration 0

execute store result score $add ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Amount
execute store result score $chance ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Chance
function cartographer_custom_statuses:status_inflict/apply/bleed
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:popup/bleed
execute if score @s ca.effect_bleed matches 1.. if entity @s[tag=!ca.bleeding_warmup] run function cartographer_custom_statuses:effects/apply/vfx/bleed

execute store result score $add ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Duration
execute store result score $chance ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Duration
function cartographer_custom_statuses:status_inflict/apply/shock
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:popup/shock
execute if score @s ca.effect_shock matches 1.. if entity @s[tag=!ca.shocked_warmup] run function cartographer_custom_statuses:effects/apply/vfx/shocked

execute store result score $add ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration
execute store result score $chance ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration
execute if score $add ca.effect_infect matches 1.. run scoreboard players add $add ca.effect_infect 1
function cartographer_custom_statuses:status_inflict/apply/infect
execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:popup/infect
execute if score @s ca.effect_infect matches 1.. if entity @s[tag=!ca.infect_warmup] run function cartographer_custom_statuses:effects/apply/vfx/infect

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
execute store result score $chance ca.effect_exposed_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Chance

execute store result score @s ca.effect_exposed_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Duration
scoreboard players operation @s ca.effect_exposed_duration *= $20 ca.CONSTANT
scoreboard players operation @s ca.effect_exposed_duration > $add ca.effect_exposed_duration

execute store result score @s ca.effect_exposed_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Amplifier
scoreboard players operation @s ca.effect_exposed_level > $add ca.effect_exposed_level

#Oiled
execute store result score $chance ca.effect_oiled_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Chance

execute store result score @s ca.effect_oiled_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Duration
scoreboard players operation @s ca.effect_oiled_duration *= $20 ca.CONSTANT
scoreboard players operation @s ca.effect_oiled_duration > $add ca.effect_oiled_duration

execute store result score @s ca.effect_oiled_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Amplifier
scoreboard players operation @s ca.effect_oiled_level > $add ca.effect_oiled_level

execute if score @s ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/oiled