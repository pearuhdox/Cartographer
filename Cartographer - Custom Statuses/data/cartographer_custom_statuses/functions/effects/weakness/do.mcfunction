attribute @s minecraft:generic.attack_damage modifier remove 31182015-2351-1151-4000-000000000000
attribute @s minecraft:generic.attack_damage modifier remove 31182015-2351-1151-4000-000000000001

execute if score @s ca.weak_lvl matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 4 add
execute if score @s ca.weak_lvl matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 8 add
execute if score @s ca.weak_lvl matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 12 add
execute if score @s ca.weak_lvl matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 16 add
execute if score @s ca.weak_lvl matches 5 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 20 add
execute if score @s ca.weak_lvl matches 6 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 24 add
execute if score @s ca.weak_lvl matches 7 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 28 add
execute if score @s ca.weak_lvl matches 8 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 32 add
execute if score @s ca.weak_lvl matches 9 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 36 add
execute if score @s ca.weak_lvl matches 10.. run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000000 "carto_weak_remove" 40 add

execute if score @s ca.weak_lvl matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.1 multiply
execute if score @s ca.weak_lvl matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.2 multiply
execute if score @s ca.weak_lvl matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.3 multiply
execute if score @s ca.weak_lvl matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.4 multiply
execute if score @s ca.weak_lvl matches 5 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.5 multiply
execute if score @s ca.weak_lvl matches 6 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.6 multiply
execute if score @s ca.weak_lvl matches 7 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.7 multiply
execute if score @s ca.weak_lvl matches 8 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.8 multiply
execute if score @s ca.weak_lvl matches 9 run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -0.9 multiply
execute if score @s ca.weak_lvl matches 10.. run attribute @s minecraft:generic.attack_damage modifier add 31182015-2351-1151-4000-000000000001 "carto_weak_add" -1 multiply

scoreboard players remove @s ca.weak_dur 1