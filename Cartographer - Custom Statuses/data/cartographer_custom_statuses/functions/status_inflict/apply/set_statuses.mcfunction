#Apply Effects
execute store result score $add ca.effect_bleed run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Amount
scoreboard players operation @s ca.effect_bleed += $add ca.effect_bleed

execute store result score $add ca.effect_shock run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocked"}].Duration
scoreboard players operation @s ca.effect_shock > $add ca.effect_shock

execute store result score $add ca.effect_infect run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration
execute if score $add ca.effect_infect matches 1.. run scoreboard players add $add ca.effect_infect 1
scoreboard players operation @s ca.effect_infect > $add ca.effect_infect

#Stun
execute store result score $add ca.effect_stun run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stunned"}].Duration
scoreboard players operation $add ca.effect_stun *= $20 ca.CONSTANT

execute store result score $chance ca.effect_stun run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stunned"}].Chance

execute if score $add ca.effect_stun matches 1.. run scoreboard players set $rng_min bbl.rng 1
execute if score $add ca.effect_stun matches 1.. run scoreboard players set $rng_max bbl.rng 100

execute if score $add ca.effect_stun matches 1.. run function bb:lib/rng

execute if score $add ca.effect_stun matches 1.. if score $value bbl.rng > $chance ca.effect_stun run scoreboard players set @s ca.effect_stun 0
scoreboard players operation @s ca.effect_stun > $add ca.effect_stun
#End of Stun


execute store result score @s ca.effect_cloak run data get storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"cloaking"}].Duration
scoreboard players operation @s ca.effect_cloak > $add ca.effect_cloak
