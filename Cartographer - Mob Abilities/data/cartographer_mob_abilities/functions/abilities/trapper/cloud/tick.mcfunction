scoreboard players operation $trap_damage_detonate ca.ability_dmg = @s ca.ability_dmg

execute if score @s ca.lifetime matches 20.. if entity @a[distance=..3] positioned ~-1.5 ~ ~-1.5 as @a[dx=3,dy=0.01,dz=3] at @s unless score @s ca.linger_cooldown matches 1.. run tag @s add ability_tagged
execute positioned ~-1.5 ~ ~-1.5 if entity @a[dx=3,dy=0.01,dz=3,tag=ability_tagged] positioned ~1.5 ~ ~1.5 run function cartographer_mob_abilities:abilities/trapper/cloud/detonate

execute if score @s ca.lifetime matches 330.. run kill @s

particle crit ~ ~0.3 ~ 0.45 0 0.45 0.1 5 normal 
particle sneeze ~ ~0.2 ~ 0 0.3 0 0 1 normal 

scoreboard players add @s ca.lifetime 1