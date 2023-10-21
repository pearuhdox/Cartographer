execute store result score $inflict ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Amount
execute store result score $inflict_chance ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Chance

execute store result score $inflict ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Duration
scoreboard players operation $inflict ca.effect_shock *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Chance

execute store result score $inflict ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Duration
scoreboard players operation $inflict ca.effect_infect *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Chance

execute store result score $inflict ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"cloaking"}].Duration

execute store result score $inflict ca.effect_exposed_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"expose"}].Amplifier
execute store result score $inflict ca.effect_exposed_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"expose"}].Duration
execute store result score $inflict_chance ca.effect_exposed_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"expose"}].Chance

execute store result score $inflict ca.effect_oiled_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"oiled"}].Amplifier
execute store result score $inflict ca.effect_oiled_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"oiled"}].Duration
scoreboard players operation $inflict ca.effect_oiled_duration *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_oiled_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"oiled"}].Chance

execute store result score $inflict ca.effect_shackled run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shackled"}].Duration
scoreboard players operation $inflict ca.effect_shackled *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_shackled run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shackled"}].Chance

execute store result score $inflict ca.effect_brittle_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"brittle"}].Amplifier
execute store result score $inflict ca.effect_brittle_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"brittle"}].Duration
scoreboard players operation $inflict ca.effect_brittle_duration *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_brittle_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"brittle"}].Chance

execute store result score $inflict ca.damage_queue run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"entropy"}].Amount

execute store result score $fire ca.status_var run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"fire"}].Duration
scoreboard players operation $fire ca.status_var *= $20 ca.CONSTANT
execute if score $fire ca.status_var matches 1.. run scoreboard players add $fire ca.status_var 1

#Stun
execute store result score $inflict ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"stun"}].Duration
scoreboard players operation $inflict ca.effect_stun *= $20 ca.CONSTANT
execute store result score $inflict_chance ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"stun"}].Chance


#Morph
execute store result score $inflict_chance ca.morph_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"morph"}].Chance


#Possession
execute store result score $inflict_chance ca.possess_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"possession"}].Chance


tag @s add ca.custom_linger_inflict

scoreboard players set @s ca.lifetime 600


scoreboard players operation @s ca.effect_bleed = $inflict ca.effect_bleed
scoreboard players operation @s ca.effect_shock = $inflict ca.effect_shock
scoreboard players operation @s ca.effect_infect = $inflict ca.effect_infect
scoreboard players operation @s ca.effect_exposed_duration = $inflict ca.effect_exposed_duration
scoreboard players operation @s ca.effect_oiled_duration = $inflict ca.effect_oiled_duration
scoreboard players operation @s ca.effect_shackled = $inflict ca.effect_shackled
scoreboard players operation @s ca.effect_brittle_duration = $inflict ca.effect_brittle_duration
scoreboard players operation @s ca.morph_time = $inflict ca.morph_time
scoreboard players operation @s ca.effect_stun = $inflict ca.effect_stun
scoreboard players operation @s ca.possess_time = $inflict ca.possess_time
scoreboard players operation @s ca.effect_fire = $fire ca.status_var
scoreboard players operation @s ca.damage_queue = $inflict ca.damage_queue