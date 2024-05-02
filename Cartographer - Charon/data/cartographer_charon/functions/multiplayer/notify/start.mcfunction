data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s HandItems[0].tag.Owner

execute as @a run function cartographer_charon:multiplayer/notify/find_player