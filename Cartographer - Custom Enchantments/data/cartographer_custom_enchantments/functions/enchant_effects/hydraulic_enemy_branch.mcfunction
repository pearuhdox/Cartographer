tp @s ~ ~ ~ facing entity @p[scores={hydraulic=1..}] feet

function cartographer_core:helper/push

scoreboard players set @s damage_queue 6

execute if score $hydraul tempest matches 1 run scoreboard players add @s damage_queue 2
execute if score $hydraul tempest matches 2 run scoreboard players add @s damage_queue 4
execute if score $hydraul tempest matches 3 run scoreboard players add @s damage_queue 6
execute if score $hydraul tempest matches 4 run scoreboard players add @s damage_queue 8
execute if score $hydraul tempest matches 5 run scoreboard players add @s damage_queue 10

function cartographer_core:helper/deal_damage/by_score
function cartographer_core:helper/deal_damage/invulnerable_tick