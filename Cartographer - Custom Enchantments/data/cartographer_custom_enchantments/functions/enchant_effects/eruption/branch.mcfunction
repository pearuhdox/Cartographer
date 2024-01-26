tag @s add erupting_xp

scoreboard players operation @s ca.attr_aoe_size = $aoe_size ca.eruption

scoreboard players set $size ca.attr_aoe_size 80
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

function cartographer_custom_enchantments:enchant_effects/eruption/macro with storage cartographer:macro.custom_enchantments

playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 

function cartographer_custom_enchantments:enchant_effects/eruption/particle_flame with storage cartographer:macro.custom_enchantments

data modify storage cartographer_custom_statuses:apply_effects data.effects set value {}
data modify storage cartographer_custom_statuses:apply_status data.effects set value {}

tag @s remove erupting_xp