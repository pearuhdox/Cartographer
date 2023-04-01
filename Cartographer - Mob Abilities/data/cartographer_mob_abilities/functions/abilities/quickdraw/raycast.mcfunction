particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute rotated ~ 0 run tp 31182015-4512-2011-3118-115180000000 ^ ^2 ^4

execute if entity @a[distance=..1.5] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/quickdraw/raycast

function cartographer_mob_abilities:abilities/quickdraw/calc_damage

scoreboard players set $projectile ca.dmg_type 1

execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

execute as @a[distance=..2,tag=!quickdrawn] at @s facing entity 31182015-4512-2011-3118-115180000000 feet run function cartographer_mob_abilities:abilities/quickdraw/player
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..2] run function cartographer_mob_abilities:helper/damage/ability_projectile

scoreboard players set $zeph_check ca.mob_var 0

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/quickdraw/raycast

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900