execute store result score @s ca.effect_bleed run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"bleeding"}].Amount


execute store result score @s ca.effect_shock run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"shocking"}].Duration

execute store result score @s ca.effect_stun run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"stunning"}].Duration
scoreboard players operation @s ca.effect_stun *= $20 ca.CONSTANT

execute store result score @s ca.effect_infect run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"infection"}].Duration

execute store result score @s ca.effect_cloak run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"cloaking"}].Duration

execute store result score @s ca.damage_queue run data get storage cartographer_custom_statuses:infliction data.Item.tag.CustomStatuses[{Id:"entropy"}].Amount

scoreboard players operation $inflict ca.effect_bleed = @s ca.effect_bleed

scoreboard players operation $inflict ca.effect_shock = @s ca.effect_shock

scoreboard players operation $inflict ca.effect_stun = @s ca.effect_stun

scoreboard players operation $inflict ca.effect_infect = @s ca.effect_infect

scoreboard players operation $inflict ca.effect_cloak = @s ca.effect_cloak

scoreboard players operation $inflict ca.damage_queue = @s ca.damage_queue

tag @s add ca.custom_linger_inflict



scoreboard players set @s ca.lifetime 600