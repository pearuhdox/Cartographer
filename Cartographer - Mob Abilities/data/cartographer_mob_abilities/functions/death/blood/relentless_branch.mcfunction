scoreboard players add @s ca.relent_stacks 1

particle minecraft:dust 0.796 1 0.957 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:white_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

execute unless score @s ca.notice_time matches 1.. run function cartographer_core:helper/entity_popups/create_plate
function cartographer_mob_abilities:animation_charge_bars/blood/relentless