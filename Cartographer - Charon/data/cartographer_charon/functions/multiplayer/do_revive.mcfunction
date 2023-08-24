tag @p add ca.has_revived_before

data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s HandItems[0].tag.Owner

execute as @a run function cartographer_charon:multiplayer/warp_player

data modify entity @s Silent set value 1b
data modify entity @s Glowing set value 0b

effect give @s invisibility 1 0 true

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..8] ~ ~ ~ 2 1.5
playsound minecraft:block.bell.resonate player @a[distance=..8] ~ ~ ~ 1 0.75
playsound minecraft:entity.player.levelup player @a[distance=..8] ~ ~ ~ 2 1.2

effect give @e[type=#bb:hostile,distance=..8.5] blindness 2 0 true
effect give @e[type=#bb:hostile,distance=..8.5] weakness 2 9 true
effect give @e[type=#bb:hostile,distance=..8.5] levitation 2 6 true

particle minecraft:glow_squid_ink ~ ~-1 ~ 0.3 0 0.3 0.05 50 normal
particle minecraft:glow ~ ~1 ~ 0.3 0.25 0.3 3 50 normal

execute on passengers run kill @s
execute on vehicle run kill @s

data modify storage cartographer_charon:multiplayer_bag Item set value {}
data modify storage cartographer_charon:multiplayer_bag Item set from entity @s HandItems[0]

summon item ~ ~ ~ {Tags:["ca.mult_bag_drop","ca.new"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=ca.mult_bag_drop,tag=ca.new,limit=1,sort=nearest] run function cartographer_charon:multiplayer/bag_data

data modify entity @s HandItems[0] set value {}

kill @s