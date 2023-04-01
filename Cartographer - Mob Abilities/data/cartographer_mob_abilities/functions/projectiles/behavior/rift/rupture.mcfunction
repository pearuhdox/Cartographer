playsound minecraft:delta.entity.generic.explode player @a[distance=..10] ~ ~ ~ 0.15 1.75

function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

particle minecraft:sweep_attack ~0.4 ~0.4 ~ 0 0 0 0 1 force
particle minecraft:sweep_attack ~ ~0.4 ~-0.4 0 0 0 0 1 force
particle minecraft:sweep_attack ~-0.4 ~0.4 ~ 0 0 0 0 1 force
particle minecraft:sweep_attack ~ ~0.4 ~0.4 0 0 0 0 1 force
particle explosion ~ ~-0.5 ~ 0 0 0 0 1 force

execute at @s run tp 31182015-4512-2011-3118-115180000000 ^ ^3 ^2

scoreboard players operation $rift_damage ca.ability_dmg = @s ca.ability_dmg

execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

execute at @s if entity @a[distance=..2.5] positioned ~-0.75 ~-0.5 ~-0.75 as @a[dx=1.5,dy=0,dz=1.5] positioned ~0.75 ~0.5 ~0.75 at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~ ~ run function cartographer_mob_abilities:projectiles/behavior/rift/player
execute at @s positioned as @a[scores={ca.damage_queue=1..},distance=..2.5] run function cartographer_mob_abilities:helper/damage/ability_generic
execute at @s if entity @a[distance=..2.5] positioned ~-0.75 ~-0.5 ~-0.75 if entity @a[dx=1.5,dy=0,dz=1.5] positioned ~0.75 ~0.5 ~0.75 positioned ^ ^3 ^-2 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players set $zeph_check ca.mob_var 0

tag @a[distance=..2.5] remove ability_tagged

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900