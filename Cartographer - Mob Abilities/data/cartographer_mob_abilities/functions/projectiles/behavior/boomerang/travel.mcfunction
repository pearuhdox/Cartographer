execute if score @s ca.lifetime matches 0.. run tp @s ^ ^ ^0.9

function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if score @s ca.lifetime matches 0.. run particle minecraft:cloud ~ ~ ~ 0 0 0 0.03 1 force

#execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
#execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.25 0 0 0 0 1 force
#execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.5 0 0 0 0 1 force
#execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.75 0 0 0 0 1 force
#execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1 force

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..6] ~ ~ ~ 0.5 2

execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,tag=ca.sh_boomerang,limit=1,sort=nearest] eyes
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run tp @s ^ ^ ^1


execute if score @s ca.lifetime matches 0.. run execute if entity @a[dx=0] positioned ~-0.3 ~-0.3 ~-0.3 if entity @a[dx=0] positioned ~0.3 ~0.3 ~0.3 run function cartographer_mob_abilities:projectiles/behavior/boomerang/attack