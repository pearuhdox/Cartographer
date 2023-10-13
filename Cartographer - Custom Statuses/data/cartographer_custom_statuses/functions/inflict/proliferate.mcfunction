execute store result score $inflict ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Amount

execute store result score $inflict ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Duration

execute store result score $inflict ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Duration

execute store result score $inflict ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"cloaking"}].Duration

execute store result score $inflict ca.effect_exposed_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"expose"}].Amplifier
execute store result score $inflict ca.effect_exposed_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"expose"}].Duration

execute store result score $inflict ca.effect_oiled_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"oiled"}].Amplifier
execute store result score $inflict ca.effect_oiled_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"oiled"}].Duration


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



execute as @e[type=#bb:hostile,distance=..3.25] at @s run function cartographer_custom_statuses:inflict/do_effect
scoreboard players reset $inflict ca.damage_queue