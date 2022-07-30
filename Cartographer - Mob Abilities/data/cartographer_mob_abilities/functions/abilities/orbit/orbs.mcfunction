particle minecraft:sculk_charge_pop ~ ~ ~ 0.15 0.15 0.15 0.05 5 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

#Runs as/at the player's position
execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.02 1 normal @a
execute if entity @s[tag=ca.glacial] run particle minecraft:snowflake ~ ~ ~ 0.05 0.05 0.05 0.02 1 normal @a
execute if entity @s[tag=ca.horrifying] run particle minecraft:dust 0.259 0.094 0.639 1 ~ ~ ~ 0.05 0.05 0.05 0.1 1 normal @a

#(Overloading runs twice)
execute if entity @s[tag=ca.overloading] run particle minecraft:wax_off ~ ~ ~ 0.05 0.05 0.05 1 1 normal @a

execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~ ~ 0.05 0.05 0.05 0.1 1 normal @a
execute if entity @s[tag=ca.zephyrous] run particle minecraft:dust 0.741 0.98 0.949 1 ~ ~ ~ 0.05 0.05 0.05 0.1 1 normal @a

#Position Independent
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.05 1 normal @a
execute if entity @s[tag=ca.volatile] run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.05 5 normal @a

execute if entity @s[tag=ca.volatile] run playsound minecraft:entity.creeper.primed hostile @a[distance=..7] ~ ~ ~ 1 1 0.5


function cartographer_mob_abilities:abilities/orbit/calc_damage

execute as @a[distance=..2.15] at @s unless score @s ca.orbit_timer matches 1.. run function cartographer_mob_abilities:abilities/orbit/player_effect

function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute if entity @s[tag=ca.volatile] at @p[distance=..2.15] run function cartographer_mob_abilities:ability_traits/volatile/effect
execute if entity @s[tag=ca.volatile] at @p[distance=..2.15] run scoreboard players set @s ca.orbit_timer 0

tag @a[distance=..10] remove ability_tagged