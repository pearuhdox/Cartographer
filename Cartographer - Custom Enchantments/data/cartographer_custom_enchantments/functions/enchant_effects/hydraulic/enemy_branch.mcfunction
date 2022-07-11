tp @s ~ ~ ~ facing entity @p[scores={ca.hydraulic=1..}] feet

function cartographer_core:helper/push

scoreboard players set @s cdl.damage_queue 6

execute if score $hydraul ca.tempest matches 1 run scoreboard players add @s cdl.damage_queue 2
execute if score $hydraul ca.tempest matches 2 run scoreboard players add @s cdl.damage_queue 4
execute if score $hydraul ca.tempest matches 3 run scoreboard players add @s cdl.damage_queue 6
execute if score $hydraul ca.tempest matches 4 run scoreboard players add @s cdl.damage_queue 8
execute if score $hydraul ca.tempest matches 5 run scoreboard players add @s cdl.damage_queue 10

function cd:lib/mob/damage/normal