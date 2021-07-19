tp @s ~ ~ ~ facing entity @p[scores={ca.hydraulic=1..}] feet

function cartographer_core:helper/push

scoreboard players set @s cdl.Damage_Queue 6

execute if score $hydraul ca.tempest matches 1 run scoreboard players add @s cdl.Damage_Queue 2
execute if score $hydraul ca.tempest matches 2 run scoreboard players add @s cdl.Damage_Queue 4
execute if score $hydraul ca.tempest matches 3 run scoreboard players add @s cdl.Damage_Queue 6
execute if score $hydraul ca.tempest matches 4 run scoreboard players add @s cdl.Damage_Queue 8
execute if score $hydraul ca.tempest matches 5 run scoreboard players add @s cdl.Damage_Queue 10

function cd:lib/mob/damage/true