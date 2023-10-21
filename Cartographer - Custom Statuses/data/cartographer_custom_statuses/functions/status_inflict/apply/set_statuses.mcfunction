#Reset Success
scoreboard players set $success ca.status_var 0

#Apply Effects
scoreboard players set $chance ca.effect_bleed 0
scoreboard players set $chance ca.effect_shock 0
scoreboard players set $chance ca.effect_infect 0
scoreboard players set $chance ca.effect_exposed_duration 0

execute store result score $add ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Amount
execute store result score $chance ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Chance
execute if score $add ca.effect_bleed matches 1.. run function cartographer_custom_statuses:status_inflict/apply/bleed
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:popup/bleed
execute if score @s ca.effect_bleed matches 1.. if entity @s[tag=!ca.bleeding_warmup] run function cartographer_custom_statuses:effects/apply/vfx/bleed

execute store result score $add ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Duration
scoreboard players operation $add ca.effect_shock *= $20 ca.CONSTANT
execute store result score $chance ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Chance
execute if score $add ca.effect_shock matches 1.. run function cartographer_custom_statuses:status_inflict/apply/shock
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:popup/shock
execute if score @s ca.effect_shock matches 1.. if entity @s[tag=!ca.shocked_warmup] run function cartographer_custom_statuses:effects/apply/vfx/shocked

execute store result score $add ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration
scoreboard players operation $add ca.effect_infect *= $20 ca.CONSTANT
execute store result score $chance ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Chance
execute if score $add ca.effect_infect matches 1.. run function cartographer_custom_statuses:status_inflict/apply/infect
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
execute store result score $add ca.effect_exposed_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Duration
execute store result score $add ca.effect_exposed_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Amplifier
scoreboard players operation $add ca.effect_exposed_duration *= $20 ca.CONSTANT

function cartographer_custom_statuses:status_inflict/apply/exposed

#Oiled
execute store result score $chance ca.effect_oiled_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Chance
execute store result score $add ca.effect_oiled_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Duration
execute store result score $add ca.effect_oiled_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Amplifier
scoreboard players operation $add ca.effect_oiled_duration *= $20 ca.CONSTANT


execute if score $add ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:status_inflict/apply/oiled

execute if score @s ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/oiled

#Shackled
execute store result score $chance ca.effect_shackled run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shackled"}].Chance

execute store result score $add ca.effect_shackled run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shackled"}].Duration
scoreboard players operation $add ca.effect_shackled *= $20 ca.CONSTANT

execute if score $add ca.effect_shackled matches 1.. run function cartographer_custom_statuses:status_inflict/apply/shackled

execute if score @s ca.effect_shackled matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/shackled

#Brittle
execute store result score $chance ca.effect_brittle_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Chance
execute store result score $add ca.effect_brittle_duration run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Duration
execute store result score $add ca.effect_brittle_level run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Amplifier
scoreboard players operation $add ca.effect_brittle_duration *= $20 ca.CONSTANT

execute if score $add ca.effect_brittle_duration matches 1.. unless score @s ca.brittle_cdl matches 1.. run function cartographer_custom_statuses:status_inflict/apply/brittle

execute if score @s ca.effect_brittle_duration matches 1.. unless score @s ca.brittle_cdl matches 1.. unless entity @s[tag=ca.brittle_warmup] run function cartographer_custom_statuses:effects/apply/vfx/brittle


#Apply Player Entropy
execute as @a[tag=ca.inflicting_player] at @s if score $do_status_inflict ca.status_var matches 1.. run function cartographer_custom_statuses:player/custom_inflict/entropy