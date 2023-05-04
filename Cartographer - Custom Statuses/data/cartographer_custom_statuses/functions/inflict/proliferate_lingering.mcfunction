execute store result score $inflict ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Amount

execute store result score $inflict ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Duration

execute store result score $inflict ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Duration

execute store result score $inflict ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"cloaking"}].Duration

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