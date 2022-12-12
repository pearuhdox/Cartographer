execute store result score $uuid_p0 dt.var run data get entity @s UUID[0]
execute store result score $uuid_p1 dt.var run data get entity @s UUID[1]
execute store result score $uuid_p2 dt.var run data get entity @s UUID[2]
execute store result score $uuid_p3 dt.var run data get entity @s UUID[3]

execute store result score $bag_p0 dt.var run data get storage cartographer_charon:multiplayer_uuid UUID[0]
execute store result score $bag_p1 dt.var run data get storage cartographer_charon:multiplayer_uuid UUID[1]
execute store result score $bag_p2 dt.var run data get storage cartographer_charon:multiplayer_uuid UUID[2]
execute store result score $bag_p3 dt.var run data get storage cartographer_charon:multiplayer_uuid UUID[3]


execute if score $uuid_p0 dt.var = $bag_p0 dt.var if score $uuid_p1 dt.var = $bag_p1 dt.var if score $uuid_p2 dt.var = $bag_p2 dt.var if score $uuid_p3 dt.var = $bag_p3 dt.var run function cartographer_charon:multiplayer/do_despawn_message