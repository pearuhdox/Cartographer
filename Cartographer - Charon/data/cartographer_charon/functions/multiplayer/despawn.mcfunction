data modify storage cartographer_charon:bundle bundle set value {}
data modify storage cartographer_charon:bundle bundle set from entity @s HandItems[0]

data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s HandItems[0].tag.Owner

execute if score $trader charon.gmr matches 1.. run function cartographer_charon:vill/add_to_villager
execute if score $death_drop charon.gmr matches 1.. run function cartographer_charon:death_drop/create
execute if score $collector charon.gmr matches 1.. run function cartographer_charon:collector/create
execute if score $cage charon.gmr matches 1.. run function cartographer_charon:cage/master

data modify entity @s HandItems[0] set value {}

data modify entity @s Silent set value 1b
data modify entity @s Glowing set value 0b

effect give @s invisibility 1 0 true

playsound minecraft:entity.allay.death player @a ~ ~ ~ 1 0.65
particle minecraft:glow_squid_ink ~ ~0.5 ~ 0 0 0 0.15 15 normal
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 25 normal
particle minecraft:sculk_soul ~ ~0.5 ~ 0 0 0 0.1 25 normal

execute as @a at @s run function cartographer_charon:multiplayer/send_despawn_message

execute on passengers run kill @s
execute on vehicle run kill @s

kill @s