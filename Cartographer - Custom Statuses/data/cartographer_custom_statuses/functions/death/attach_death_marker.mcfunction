execute if score $death_mark ca.death_registry matches 1 run ride 31182015-4512-0891-4653-000000000000 mount @s

execute if score $death_mark ca.death_registry matches 2 run ride 31182015-4512-0891-4653-000000000001 mount @s

execute if score $death_mark ca.death_registry matches 3 run ride 31182015-4512-0891-4653-000000000002 mount @s

execute if score $death_mark ca.death_registry matches 4 run ride 31182015-4512-0891-4653-000000000003 mount @s

execute if score $death_mark ca.death_registry matches 5 run ride 31182015-4512-0891-4653-000000000004 mount @s

execute if score $death_mark ca.death_registry matches 6 run ride 31182015-4512-0891-4653-000000000005 mount @s

execute if score $death_mark ca.death_registry matches 7 run ride 31182015-4512-0891-4653-000000000006 mount @s

execute if score $death_mark ca.death_registry matches 8 run ride 31182015-4512-0891-4653-000000000007 mount @s

execute if score $death_mark ca.death_registry matches 9 run ride 31182015-4512-0891-4653-000000000008 mount @s

execute if score $death_mark ca.death_registry matches 10 run ride 31182015-4512-0891-4653-000000000009 mount @s


execute if score $death_mark ca.death_registry matches 11 run ride 31182015-4512-0891-4653-000000000010 mount @s

execute if score $death_mark ca.death_registry matches 12 run ride 31182015-4512-0891-4653-000000000011 mount @s

execute if score $death_mark ca.death_registry matches 13 run ride 31182015-4512-0891-4653-000000000012 mount @s

execute if score $death_mark ca.death_registry matches 14 run ride 31182015-4512-0891-4653-000000000013 mount @s

execute if score $death_mark ca.death_registry matches 15 run ride 31182015-4512-0891-4653-000000000014 mount @s

execute if score $death_mark ca.death_registry matches 16 run ride 31182015-4512-0891-4653-000000000015 mount @s

execute if score $death_mark ca.death_registry matches 17 run ride 31182015-4512-0891-4653-000000000016 mount @s

execute if score $death_mark ca.death_registry matches 18 run ride 31182015-4512-0891-4653-000000000017 mount @s

execute if score $death_mark ca.death_registry matches 19 run ride 31182015-4512-0891-4653-000000000018 mount @s

execute if score $death_mark ca.death_registry matches 20 run ride 31182015-4512-0891-4653-000000000019 mount @s


execute if score $death_mark ca.death_registry matches 21 run ride 31182015-4512-0891-4653-000000000020 mount @s

execute if score $death_mark ca.death_registry matches 22 run ride 31182015-4512-0891-4653-000000000021 mount @s

execute if score $death_mark ca.death_registry matches 23 run ride 31182015-4512-0891-4653-000000000022 mount @s

execute if score $death_mark ca.death_registry matches 24 run ride 31182015-4512-0891-4653-000000000023 mount @s

execute if score $death_mark ca.death_registry matches 25 run ride 31182015-4512-0891-4653-000000000024 mount @s

execute if score $death_mark ca.death_registry matches 26 run ride 31182015-4512-0891-4653-000000000025 mount @s

execute if score $death_mark ca.death_registry matches 27 run ride 31182015-4512-0891-4653-000000000026 mount @s

execute if score $death_mark ca.death_registry matches 28 run ride 31182015-4512-0891-4653-000000000027 mount @s

execute if score $death_mark ca.death_registry matches 29 run ride 31182015-4512-0891-4653-000000000028 mount @s

execute if score $death_mark ca.death_registry matches 30 run ride 31182015-4512-0891-4653-000000000029 mount @s


execute if score $death_mark ca.death_registry matches 31 run ride 31182015-4512-0891-4653-000000000030 mount @s

execute if score $death_mark ca.death_registry matches 32 run ride 31182015-4512-0891-4653-000000000031 mount @s

execute if score $death_mark ca.death_registry matches 33 run ride 31182015-4512-0891-4653-000000000032 mount @s

execute if score $death_mark ca.death_registry matches 34 run ride 31182015-4512-0891-4653-000000000033 mount @s

execute if score $death_mark ca.death_registry matches 35 run ride 31182015-4512-0891-4653-000000000034 mount @s

execute if score $death_mark ca.death_registry matches 36 run ride 31182015-4512-0891-4653-000000000035 mount @s

execute if score $death_mark ca.death_registry matches 37 run ride 31182015-4512-0891-4653-000000000036 mount @s

execute if score $death_mark ca.death_registry matches 38 run ride 31182015-4512-0891-4653-000000000037 mount @s

execute if score $death_mark ca.death_registry matches 39 run ride 31182015-4512-0891-4653-000000000038 mount @s

execute if score $death_mark ca.death_registry matches 40 run ride 31182015-4512-0891-4653-000000000039 mount @s

data modify storage cartographer_custom_statuses:death_marker data set value {}

data modify storage cartographer_custom_statuses:death_marker data.EntityTags set from entity @s Tags

tag @s add ca.has_death_setup

execute on passengers if entity @s[type=marker,tag=ca.death_marker] run function cartographer_custom_statuses:death/death_marker_data