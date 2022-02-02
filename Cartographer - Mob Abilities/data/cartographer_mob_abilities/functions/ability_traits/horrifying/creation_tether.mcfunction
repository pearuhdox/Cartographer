kill @e[type=marker,tag=horrify_tether,distance=..8]

playsound minecraft:entity.ghast.ambient master @a[distance=..10] ~ ~ ~ 0.25 1
playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..10] ~ ~ ~ 2 0.7
playsound minecraft:block.conduit.ambient player @a[distance=..10] ~ ~ ~ 2 0.8

summon minecraft:marker ~ ~0.2 ~ {Tags:["horrify_tether"]}

tag @s add ca.horrify_create
