summon item ~ ~1.75 ~ {Tags:["ca.charon_cage_bag"],Item:{id:"minecraft:bundle",Count:1b}}

data modify storage cartographer_charon:cage bundle set value {}
data modify storage cartographer_charon:cage bundle set from entity @s ArmorItems[1]

stopsound @a[distance=..16] hostile minecraft:block.chain.break
stopsound @a[distance=..16] hostile minecraft:block.conduit.ambient
stopsound @a[distance=..16] hostile minecraft:entity.iron_golem.hurt
stopsound @a[distance=..16] hostile minecraft:block.iron_trapdoor.open

playsound minecraft:entity.warden.dig hostile @a[distance=..16] ~ ~ ~ 1 2

execute as @e[type=item,limit=1,sort=nearest,tag=ca.charon_cage_bag,tag=!bag_checked] at @s run function cartographer_charon:cage/bag_effects

kill @s