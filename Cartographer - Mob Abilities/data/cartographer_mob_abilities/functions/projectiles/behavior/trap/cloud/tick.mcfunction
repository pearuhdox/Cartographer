scoreboard players operation $trap_damage_detonate ca.ability_dmg = @s ca.ability_dmg

execute if score @s ca.lifetime matches 35.. positioned ~-1 ~ ~-1 as @a[dx=2,dy=0,dz=2] at @s unless score @s ca.linger_cooldown matches 1.. run tag @s add ability_tagged
execute if score @s ca.lifetime matches 35.. positioned ~-2 ~ ~-2 if entity @a[dx=2,dy=0,dz=2,tag=ability_tagged] positioned ~2 ~ ~2 run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/detonate

execute if score @s ca.lifetime matches 35.. positioned ~-1 ~ ~ run particle minecraft:dust 1 1 1 0.7 ~ ~ ~ 0 0 0.5 0 5 normal
execute if score @s ca.lifetime matches 35.. positioned ~ ~ ~-1 run particle minecraft:dust 1 1 1 0.7 ~ ~ ~ 0.5 0 0 0 5 normal
execute if score @s ca.lifetime matches 35.. positioned ~1 ~ ~ run particle minecraft:dust 1 1 1 0.7 ~ ~ ~ 0 0 0.5 0 5 normal
execute if score @s ca.lifetime matches 35.. positioned ~ ~ ~1 run particle minecraft:dust 1 1 1 0.7 ~ ~ ~ 0.5 0 0 0 5 normal

execute if score @s ca.lifetime matches 30 run playsound minecraft:block.anvil.use hostile @a[distance=..12] ~ ~ ~ 0.75 2

execute if score @s ca.lifetime matches 330.. run kill @s

particle crit ~ ~0.3 ~ 0.45 0 0.45 0.1 5 normal 
particle sneeze ~ ~0.2 ~ 0 0.3 0 0 1 normal 

scoreboard players add @s ca.lifetime 1