playsound minecraft:entity.shulker_bullet.hurt block @a[distance=..8] ~ ~ ~ 1 1.5
playsound minecraft:block.sculk_sensor.break block @a ~ ~ ~ 0.5 1

particle minecraft:sculk_soul ~ ~0.1 ~ 0.2 0 0.2 0.03 5 normal
particle minecraft:cloud ~ ~0.1 ~ 0.2 0 0.2 0.05 2 normal

execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={Item:{id:"minecraft:bundle",tag:{DeathBundle:1b}}}] at @s run function cartographer_charon:death_drop/modify_item

kill @s