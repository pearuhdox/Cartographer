playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 1.3
playsound minecraft:entity.shulker.hurt_closed hostile @a[distance=..16] ~ ~ ~ 1 0.5

particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 6 normal

scoreboard players remove @s ca.carapace_stacks 1

execute unless score @s ca.notice_time matches 1.. run function cartographer_core:helper/entity_popups/create_plate
function cartographer_mob_abilities:ability_traits/carapace/notice

execute if score @s ca.carapace_stacks matches 0 run playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 1 1.3
execute if score @s ca.carapace_stacks matches 0 run effect clear @s resistance