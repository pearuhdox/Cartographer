playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2
scoreboard players add @s ca.brutal_stacks 2
particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

execute unless score @s ca.notice_time matches 1.. run function cartographer_core:helper/entity_popups/create_plate
function cartographer_mob_abilities:animation_charge_bars/blood/brutal