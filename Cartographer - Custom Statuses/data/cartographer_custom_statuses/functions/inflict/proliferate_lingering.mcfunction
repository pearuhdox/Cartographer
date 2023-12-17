execute store result score $inflict ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"bleeding"}].amplifier
execute store result score $inflict_chance ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"bleeding"}].chance

execute store result score $inflict ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"shocked"}].duration
execute store result score $inflict_chance ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"shocked"}].chance

execute store result score $inflict ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"infected"}].duration
execute store result score $inflict_chance ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"infected"}].chance

execute store result score $inflict ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"cloaked"}].duration

execute store result score $inflict ca.effect_exposed_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"exposed"}].amplifier
execute store result score $inflict ca.effect_exposed_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"exposed"}].duration
execute store result score $inflict_chance ca.effect_exposed_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"exposed"}].chance

execute store result score $inflict ca.effect_oiled_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"oiled"}].amplifier
execute store result score $inflict ca.effect_oiled_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"oiled"}].duration
execute store result score $inflict_chance ca.effect_oiled_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"oiled"}].chance

execute store result score $inflict ca.effect_shackled run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"shackled"}].duration
execute store result score $inflict_chance ca.effect_shackled run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"shackled"}].chance

execute store result score $inflict ca.effect_brittle_level run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"brittle"}].amplifier
execute store result score $inflict ca.effect_brittle_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"brittle"}].duration
execute store result score $inflict_chance ca.effect_brittle_duration run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"brittle"}].chance

execute store result score $inflict ca.damage_queue run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"entropy"}].amplifier

execute store result score $fire ca.status_var run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"fire"}].duration
execute if score $fire ca.status_var matches 1.. run scoreboard players add $fire ca.status_var 1

#Stun
execute store result score $inflict ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"stunned"}].duration
execute store result score $inflict_chance ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"stunned"}].chance


#Morph
execute store result score $inflict_chance ca.morph_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"polymorphed"}].chance
execute store result score $inflict_time ca.morph_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"polymorphed"}].duration


#Charmed
execute store result score $inflict_chance ca.charm_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"charmed"}].chance
execute store result score $inflict_time ca.charm_time run data get storage cartographer_custom_statuses:infliction data.Item.tag.custom_statuses[{id:"charmed"}].duration


tag @s add ca.custom_linger_inflict

scoreboard players set @s ca.lifetime 600
scoreboard players set $active_potion ca.registry 620

scoreboard players operation @s ca.effect_bleed = $inflict ca.effect_bleed
scoreboard players operation @s ca.effect_shock = $inflict ca.effect_shock
scoreboard players operation @s ca.effect_infect = $inflict ca.effect_infect
scoreboard players operation @s ca.effect_exposed_duration = $inflict ca.effect_exposed_duration
scoreboard players operation @s ca.effect_oiled_duration = $inflict ca.effect_oiled_duration
scoreboard players operation @s ca.effect_shackled = $inflict ca.effect_shackled
scoreboard players operation @s ca.effect_brittle_duration = $inflict ca.effect_brittle_duration

scoreboard players operation @s ca.effect_stun = $inflict ca.effect_stun

scoreboard players operation @s ca.effect_morph = $inflict_chance ca.effect_morph
scoreboard players operation @s ca.morph_time = $inflict_time ca.morph_time

scoreboard players operation @s ca.effect_charmed = $inflict_chance ca.charm_time
scoreboard players operation @s ca.charm_time = $inflict_time ca.charm_time

scoreboard players operation @s ca.effect_fire = $fire ca.status_var
scoreboard players operation @s ca.damage_queue = $inflict ca.damage_queue