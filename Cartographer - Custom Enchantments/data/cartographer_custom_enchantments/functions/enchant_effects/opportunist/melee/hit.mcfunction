particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.1 5 normal

playsound minecraft:entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 2 1.5
playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.5 2
playsound minecraft:item.firecharge.use player @a[distance=..10] ~ ~ ~ 0.5 0.75

scoreboard players operation @s cdl.damage_queue = @s op_dmg

scoreboard players operation @s cdl.damage_queue += @s op_sha

scoreboard players operation @s cdl.damage_queue /= $2 ca.CONSTANT

function cd:lib/mob/damage/normal