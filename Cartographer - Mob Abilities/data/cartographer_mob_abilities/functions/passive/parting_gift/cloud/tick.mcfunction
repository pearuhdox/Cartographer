execute if score @s ca.lifetime matches 20.. if entity @a[distance=..2.6] positioned ~-2.5 ~ ~-2.5 as @a[dx=2.5,dy=0.01,dz=2.5] at @s unless score @s ca.linger_cooldown matches 1.. run tag @s add ability_tagged
execute positioned ~-2.5 ~ ~-2.5 if entity @a[dx=2.5,dy=0.01,dz=2.5,tag=ability_tagged] positioned ~2.5 ~ ~2.5 run function cartographer_mob_abilities:passive/parting_gift/cloud/detonate

execute if score @s ca.lifetime matches 620.. run kill @s

scoreboard players add @s ca.lifetime 1