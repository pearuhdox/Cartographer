particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/quickdraw/raycast

function cartographer_mob_abilities:abilities/quickdraw/calc_damage

scoreboard players set $projectile ca.dmg_type 1

execute as @a[distance=..2,tag=!quickdrawn] run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[distance=..2,tag=!quickdrawn] unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310211
execute as @a[distance=..2,tag=!quickdrawn] run tag @s remove no_cdl_msg
execute as @a[distance=..2,tag=!quickdrawn] run function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction
execute as @a[distance=..2,tag=!quickdrawn] run function cd:lib/player/damage/normal
execute as @a[distance=..2,tag=!quickdrawn] at @s run tag @s add ability_tagged
execute as @a[distance=..2,tag=!quickdrawn] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @a[distance=..2,tag=!quickdrawn] run tag @s add quickdrawn

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/quickdraw/raycast