execute if score $pot_mark ca.registry matches 1 run ride 31182015-1615-2032-1192-000000000000 mount @s

execute if score $pot_mark ca.registry matches 2 run ride 31182015-1615-2032-1192-000000000001 mount @s

execute if score $pot_mark ca.registry matches 3 run ride 31182015-1615-2032-1192-000000000002 mount @s

execute if score $pot_mark ca.registry matches 4 run ride 31182015-1615-2032-1192-000000000003 mount @s

execute if score $pot_mark ca.registry matches 5 run ride 31182015-1615-2032-1192-000000000004 mount @s

execute if score $pot_mark ca.registry matches 6 run ride 31182015-1615-2032-1192-000000000005 mount @s

execute if score $pot_mark ca.registry matches 7 run ride 31182015-1615-2032-1192-000000000006 mount @s

execute if score $pot_mark ca.registry matches 8 run ride 31182015-1615-2032-1192-000000000007 mount @s

execute if score $pot_mark ca.registry matches 9 run ride 31182015-1615-2032-1192-000000000008 mount @s

execute if score $pot_mark ca.registry matches 10 run ride 31182015-1615-2032-1192-000000000009 mount @s


execute if score $pot_mark ca.registry matches 11 run ride 31182015-1615-2032-1192-000000000010 mount @s

execute if score $pot_mark ca.registry matches 12 run ride 31182015-1615-2032-1192-000000000011 mount @s

execute if score $pot_mark ca.registry matches 13 run ride 31182015-1615-2032-1192-000000000012 mount @s

execute if score $pot_mark ca.registry matches 14 run ride 31182015-1615-2032-1192-000000000013 mount @s

execute if score $pot_mark ca.registry matches 15 run ride 31182015-1615-2032-1192-000000000014 mount @s

execute if score $pot_mark ca.registry matches 16 run ride 31182015-1615-2032-1192-000000000015 mount @s

execute if score $pot_mark ca.registry matches 17 run ride 31182015-1615-2032-1192-000000000016 mount @s

execute if score $pot_mark ca.registry matches 18 run ride 31182015-1615-2032-1192-000000000017 mount @s

execute if score $pot_mark ca.registry matches 19 run ride 31182015-1615-2032-1192-000000000018 mount @s

execute if score $pot_mark ca.registry matches 20 run ride 31182015-1615-2032-1192-000000000019 mount @s

execute on origin run scoreboard players operation $player_id ca.registry = @s ca.player_id

data modify storage cartographer_core:pot_marker data set value {}
data modify storage cartographer_core:pot_marker data.EntityTags set from entity @s Tags
data modify storage cartographer_core:pot_marker data.Item set from entity @s Item
data modify storage cartographer_core:pot_marker data.id set from storage cartographer_core:pot_marker data.Item.id

tag @s add ca.has_death_setup

execute on origin run data modify storage cartographer_core:pot_marker data.Owner set from entity @s UUID

execute on passengers if entity @s[type=marker,tag=ca.pot_marker] run function cartographer_core:potion_mark/pot_marker_data