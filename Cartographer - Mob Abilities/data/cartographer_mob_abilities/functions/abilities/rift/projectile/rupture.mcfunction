playsound minecraft:entity.generic.explode player @a[distance=..10] ~ ~ ~ 0.15 1.75

function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile
function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

particle minecraft:sweep_attack ~0.4 ~0.4 ~ 0 0 0 0 1 force
particle minecraft:sweep_attack ~ ~0.4 ~-0.4 0 0 0 0 1 force
particle minecraft:sweep_attack ~-0.4 ~0.4 ~ 0 0 0 0 1 force
particle minecraft:sweep_attack ~ ~0.4 ~0.4 0 0 0 0 1 force
particle explosion ~ ~-0.5 ~ 0 0 0 0 1 force

scoreboard players operation $rift_damage ca.ability_dmg = @s ca.ability_dmg

execute as @a[distance=..2.5] positioned ~-0.75 ~ ~-0.75 if entity @a[dx=1.5,dz=1.5,dy=0] positioned ~0.75 ~ ~0.75 run function cartographer_mob_abilities:abilities/rift/projectile/hit
execute if entity @a[distance=..2.5] positioned ~-0.75 ~ ~-0.75 if entity @a[dx=1.5,dz=1.5,dy=0] positioned ~0.75 ~ ~0.75 run function cartographer_mob_abilities:abilities/rift/call_rift_traits

tag @a[distance=..2.5] remove ability_tagged