#Reset Player Entropy Success
scoreboard players set $success ca.status_var 0

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


function cartographer_custom_statuses:inflict/do_effect_variable

#Do Entropy Check
execute as @a[tag=ca.pot_thrower] at @s run function cartographer_custom_statuses:player/custom_inflict/entropy