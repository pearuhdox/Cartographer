# 3118200b-1615-2032-1192-000000000000
# [I;823664651,370483250,294780928,0]

execute if score $aec ca.death_registry matches 1 run ride 3118200b-1615-2032-1192-000000000000 mount @s

execute if score $aec ca.death_registry matches 2 run ride 3118200b-1615-2032-1192-000000000001 mount @s

execute if score $aec ca.death_registry matches 3 run ride 3118200b-1615-2032-1192-000000000002 mount @s

execute if score $aec ca.death_registry matches 4 run ride 3118200b-1615-2032-1192-000000000003 mount @s

execute if score $aec ca.death_registry matches 5 run ride 3118200b-1615-2032-1192-000000000004 mount @s

execute if score $aec ca.death_registry matches 6 run ride 3118200b-1615-2032-1192-000000000005 mount @s

execute if score $aec ca.death_registry matches 7 run ride 3118200b-1615-2032-1192-000000000006 mount @s

execute if score $aec ca.death_registry matches 8 run ride 3118200b-1615-2032-1192-000000000007 mount @s

execute if score $aec ca.death_registry matches 9 run ride 3118200b-1615-2032-1192-000000000008 mount @s

execute if score $aec ca.death_registry matches 10 run ride 3118200b-1615-2032-1192-000000000009 mount @s


execute if score $aec ca.death_registry matches 11 run ride 3118200b-1615-2032-1192-000000000010 mount @s

execute if score $aec ca.death_registry matches 12 run ride 3118200b-1615-2032-1192-000000000011 mount @s

execute if score $aec ca.death_registry matches 13 run ride 3118200b-1615-2032-1192-000000000012 mount @s

execute if score $aec ca.death_registry matches 14 run ride 3118200b-1615-2032-1192-000000000013 mount @s

execute if score $aec ca.death_registry matches 15 run ride 3118200b-1615-2032-1192-000000000014 mount @s

execute if score $aec ca.death_registry matches 16 run ride 3118200b-1615-2032-1192-000000000015 mount @s

execute if score $aec ca.death_registry matches 17 run ride 3118200b-1615-2032-1192-000000000016 mount @s

execute if score $aec ca.death_registry matches 18 run ride 3118200b-1615-2032-1192-000000000017 mount @s

execute if score $aec ca.death_registry matches 19 run ride 3118200b-1615-2032-1192-000000000018 mount @s

execute if score $aec ca.death_registry matches 20 run ride 3118200b-1615-2032-1192-000000000019 mount @s


scoreboard players operation @s ca.aec_to_mob = $aec ca.death_registry
scoreboard players set $timer ca.aec_to_mob 21


execute on passengers if entity @s[type=area_effect_cloud,tag=ca.apply_effects] run function cartographer_custom_statuses:apply_effects/apply/aec_data