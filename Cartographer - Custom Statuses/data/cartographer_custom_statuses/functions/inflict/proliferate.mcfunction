execute store result score @s ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Duration
execute store result score @s ca.bleed_potency run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Potency

execute store result score @s ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Duration

execute store result score @s ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"stunning"}].Duration
scoreboard players operation @s ca.effect_stun *= $20 ca.CONSTANT

execute store result score @s ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Duration

execute store result score @s ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"cloaking"}].Duration

scoreboard players operation $inflict ca.effect_bleed = @s ca.effect_bleed
scoreboard players operation $inflict ca.bleed_potency = @s ca.bleed_potency

scoreboard players operation $inflict ca.effect_shock = @s ca.effect_shock

scoreboard players operation $inflict ca.effect_stun = @s ca.effect_stun

scoreboard players operation $inflict ca.effect_infect = @s ca.effect_infect

scoreboard players operation $inflict ca.effect_cloak = @s ca.effect_cloak

execute as @e[type=#bb:hostile,distance=..3.5] at @s run function cartographer_custom_statuses:inflict/do_effect