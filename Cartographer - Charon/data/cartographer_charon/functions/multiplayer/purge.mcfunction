data modify entity @s Silent set value 1b
data modify entity @s Glowing set value 0b

effect give @s invisibility 1 0 true

playsound minecraft:entity.allay.death player @a ~ ~ ~ 1 0.65
particle minecraft:glow_squid_ink ~ ~0.5 ~ 0 0 0 0.15 15 normal
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 25 normal
particle minecraft:sculk_soul ~ ~0.5 ~ 0 0 0 0.1 25 normal

execute as @a at @s run function cartographer_charon:multiplayer/send_purge_message

execute on passengers run kill @s
execute on vehicle run kill @s

kill @s