#Reset Success
scoreboard players set $success ca.status_var 0

#Apply Effects
scoreboard players set $chance ca.effect_bleed 0
scoreboard players set $chance ca.effect_shock 0
scoreboard players set $chance ca.effect_infect 0
scoreboard players set $chance ca.effect_exposed_duration 0

execute store result score $add ca.effect_bleed run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"bleeding"}].amplifier
execute store result score $chance ca.effect_bleed run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"bleeding"}].chance
execute if score $add ca.effect_bleed matches 1.. run function cartographer_custom_statuses:apply_status/apply/bleed
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:popup/bleed
execute if score @s ca.effect_bleed matches 1.. if entity @s[tag=!ca.bleeding_warmup] run function cartographer_custom_statuses:effects/apply/vfx/bleed

execute store result score $add ca.effect_shock run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"shocking"}].duration
execute store result score $chance ca.effect_shock run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"shocking"}].chance
execute if score $add ca.effect_shock matches 1.. run function cartographer_custom_statuses:apply_status/apply/shock
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:popup/shock
execute if score @s ca.effect_shock matches 1.. if entity @s[tag=!ca.shocked_warmup] run function cartographer_custom_statuses:effects/apply/vfx/shocked

execute store result score $add ca.effect_infect run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"infection"}].duration
execute store result score $chance ca.effect_infect run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"infection"}].chance
execute if score $add ca.effect_infect matches 1.. run function cartographer_custom_statuses:apply_status/apply/infect
execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:popup/infect
execute if score @s ca.effect_infect matches 1.. if entity @s[tag=!ca.infect_warmup] run function cartographer_custom_statuses:effects/apply/vfx/infect

#Stun
execute store result score $inflict ca.effect_stun run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"stun"}].duration

execute store result score $chance ca.effect_stun run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"stun"}].chance

execute if score $inflict ca.effect_stun matches 1.. run function cartographer_custom_statuses:apply_status/apply/stunned

#Morph
execute store result score $chance ca.morph_time run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"morph"}].chance
execute store result score $time ca.morph_time run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"morph"}].duration

execute if score $time ca.morph_time matches 1.. run function cartographer_custom_statuses:apply_status/apply/morphed

#Charmed
execute store result score $chance ca.charm_time run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"charmed"}].chance
execute store result score $time ca.charm_time run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"charmed"}].duration

execute if score $time ca.charm_time matches 1.. run function cartographer_custom_statuses:apply_status/apply/charmed


execute store result score @s ca.effect_cloak run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"cloaking"}].duration
scoreboard players operation @s ca.effect_cloak > $add ca.effect_cloak

#Expose
execute store result score $chance ca.effect_exposed_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"expose"}].chance
execute store result score $add ca.effect_exposed_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"expose"}].duration
execute store result score $add ca.effect_exposed_level run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"expose"}].amplifier

function cartographer_custom_statuses:apply_status/apply/exposed

#Oiled
execute store result score $chance ca.effect_oiled_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].chance
execute store result score $add ca.effect_oiled_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].duration
execute store result score $add ca.effect_oiled_level run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].amplifier


execute if score $add ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:apply_status/apply/oiled

execute if score @s ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/oiled

#Shackled
execute store result score $chance ca.effect_shackled run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"shackled"}].chance

execute store result score $add ca.effect_shackled run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"shackled"}].duration

execute if score $add ca.effect_shackled matches 1.. run function cartographer_custom_statuses:apply_status/apply/shackled

execute if score @s ca.effect_shackled matches 1.. run function cartographer_custom_statuses:effects/apply/vfx/shackled

#Brittle
execute store result score $chance ca.effect_brittle_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].chance
execute store result score $add ca.effect_brittle_duration run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].duration
execute store result score $add ca.effect_brittle_level run data get storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].amplifier

execute if score $add ca.effect_brittle_duration matches 1.. unless score @s ca.brittle_cdl matches 1.. run function cartographer_custom_statuses:apply_status/apply/brittle

execute if score @s ca.effect_brittle_duration matches 1.. unless score @s ca.brittle_cdl matches 1.. unless entity @s[tag=ca.brittle_warmup] run function cartographer_custom_statuses:effects/apply/vfx/brittle


#Apply Player Entropy
execute as @a[tag=ca.inflicting_player] at @s if score $do_apply_status ca.status_var matches 1.. run function cartographer_custom_statuses:player/custom_inflict/entropy