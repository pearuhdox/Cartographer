execute if score @s ca.lifetime matches 401..600 if score @s ca.effect_bleed matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal
execute if score @s ca.lifetime matches 401..600 if score @s ca.effect_shock matches 1.. run particle minecraft:electric_spark ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal
execute if score @s ca.lifetime matches 401..600 if score @s ca.effect_infect matches 1.. run particle minecraft:dust 0.2 0 0.2 0.75 ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal
execute if score @s ca.lifetime matches 401..600 if score @s ca.effect_stun matches 1.. run particle minecraft:dust 0.867 0.808 0.2861 0.75 ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal
execute if score @s ca.lifetime matches 401..600 if score @s ca.effect_cloak matches 1.. run particle minecraft:dust 0.569 0.478 0.961 0.75 ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal
execute if score @s ca.lifetime matches 401..600 if score @s ca.damage_queue matches 1.. run particle minecraft:instant_effect ~ ~-0.2 ~ 1.25 0.1 1.25 0 7 normal

execute if score @s ca.lifetime matches 201..400 if score @s ca.effect_bleed matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal
execute if score @s ca.lifetime matches 201..400 if score @s ca.effect_shock matches 1.. run particle minecraft:electric_spark ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal
execute if score @s ca.lifetime matches 201..400 if score @s ca.effect_infect matches 1.. run particle minecraft:dust 0.2 0 0.2 0.75 ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal
execute if score @s ca.lifetime matches 201..400 if score @s ca.effect_stun matches 1.. run particle minecraft:dust 0.867 0.808 0.2861 0.75 ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal
execute if score @s ca.lifetime matches 201..400 if score @s ca.effect_cloak matches 1.. run particle minecraft:dust 0.569 0.478 0.961 0.75 ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal
execute if score @s ca.lifetime matches 201..400 if score @s ca.damage_queue matches 1.. run particle minecraft:instant_effect ~ ~-0.2 ~ 0.85 0.1 0.85 0 4 normal

execute if score @s ca.lifetime matches 1..200 if score @s ca.effect_bleed matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal
execute if score @s ca.lifetime matches 1..200 if score @s ca.effect_shock matches 1.. run particle minecraft:electric_spark ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal
execute if score @s ca.lifetime matches 1..200 if score @s ca.effect_infect matches 1.. run particle minecraft:dust 0.2 0 0.2 0.75 ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal
execute if score @s ca.lifetime matches 1..200 if score @s ca.effect_stun matches 1.. run particle minecraft:dust 0.867 0.808 0.2861 0.75 ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal
execute if score @s ca.lifetime matches 1..200 if score @s ca.effect_cloak matches 1.. run particle minecraft:dust 0.569 0.478 0.961 0.75 ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal
execute if score @s ca.lifetime matches 1..200 if score @s ca.damage_queue matches 1.. run particle minecraft:instant_effect ~ ~-0.2 ~ 0.45 0.1 0.45 0 2 normal

#Set this here even though it isnt a custom effect
scoreboard players operation $inflict ca.damage_queue = @s ca.damage_queue