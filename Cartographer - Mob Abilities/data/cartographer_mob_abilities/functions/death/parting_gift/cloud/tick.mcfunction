execute if score @s ca.lifetime matches 20.. if entity @a[distance=..2.6] positioned ~-1.75 ~ ~-1.75 as @a[dx=3,dy=0.01,dz=3] at @s unless score @s ca.linger_cooldown matches 1.. run tag @s add ability_tagged
execute positioned ~-1.75 ~ ~-1.75 if entity @a[dx=3,dy=0.01,dz=3,tag=ability_tagged] positioned ~1.75 ~ ~1.75 run function cartographer_mob_abilities:death/parting_gift/cloud/detonate

execute if score @s ca.lifetime matches 620.. run kill @s

scoreboard players add @s ca.lifetime 1