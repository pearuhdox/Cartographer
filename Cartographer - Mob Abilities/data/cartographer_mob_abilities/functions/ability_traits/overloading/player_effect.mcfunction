playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.7 1.75

scoreboard players set in math -4
scoreboard players set in1 math 4

function cartographer_core:helper/math/rng/range

scoreboard players operation $pos_x ca.overload_pos = out math

function cartographer_core:helper/math/rng/range

scoreboard players operation $pos_z ca.overload_pos = out math

execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches 1 positioned ~0.5 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches 2 positioned ~0.5 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches 3 positioned ~0.5 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches 4 positioned ~0.5 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches 1 positioned ~1 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches 2 positioned ~1 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches 3 positioned ~1 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches 4 positioned ~1 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches 1 positioned ~1.5 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches 2 positioned ~1.5 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches 3 positioned ~1.5 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches 4 positioned ~1.5 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches 1 positioned ~2 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches 2 positioned ~2 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches 3 positioned ~2 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches 4 positioned ~2 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload



execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches 1 positioned ~-0.5 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches 2 positioned ~-0.5 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches 3 positioned ~-0.5 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches 4 positioned ~-0.5 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches 1 positioned ~-1 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches 2 positioned ~-1 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches 3 positioned ~-1 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches 4 positioned ~-1 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches 1 positioned ~-1.5 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches 2 positioned ~-1.5 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches 3 positioned ~-1.5 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches 4 positioned ~-1.5 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches 1 positioned ~-2 ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches 2 positioned ~-2 ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches 3 positioned ~-2 ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches 4 positioned ~-2 ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload



execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches -1 positioned ~0.5 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches -2 positioned ~0.5 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches -3 positioned ~0.5 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches -4 positioned ~0.5 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches -1 positioned ~1 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches -2 positioned ~1 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches -3 positioned ~1 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches -4 positioned ~1 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches -1 positioned ~1.5 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches -2 positioned ~1.5 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches -3 positioned ~1.5 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches -4 positioned ~1.5 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches -1 positioned ~2 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches -2 positioned ~2 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches -3 positioned ~2 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches -4 positioned ~2 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload



execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches -1 positioned ~-0.5 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches -2 positioned ~-0.5 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches -3 positioned ~-0.5 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches -4 positioned ~-0.5 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches -1 positioned ~-1 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches -2 positioned ~-1 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches -3 positioned ~-1 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches -4 positioned ~-1 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches -1 positioned ~-1.5 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches -2 positioned ~-1.5 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches -3 positioned ~-1.5 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches -4 positioned ~-1.5 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches -1 positioned ~-2 ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches -2 positioned ~-2 ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches -3 positioned ~-2 ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches -4 positioned ~-2 ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload



execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches -1 positioned ~ ~0.2 ~-0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches -2 positioned ~ ~0.2 ~-1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches -3 positioned ~ ~0.2 ~-1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches -4 positioned ~ ~0.2 ~-2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches 1 positioned ~ ~0.2 ~0.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches 2 positioned ~ ~0.2 ~1 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches 3 positioned ~ ~0.2 ~1.5 run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 0 if score $pos_z ca.overload_pos matches 4 positioned ~ ~0.2 ~2 run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches 1 if score $pos_z ca.overload_pos matches 0 positioned ~-0.5 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 2 if score $pos_z ca.overload_pos matches 0 positioned ~-1 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 3 if score $pos_z ca.overload_pos matches 0 positioned ~-1.5 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches 4 if score $pos_z ca.overload_pos matches 0 positioned ~-2 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload

execute if score $pos_x ca.overload_pos matches -1 if score $pos_z ca.overload_pos matches 0 positioned ~-0.5 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -2 if score $pos_z ca.overload_pos matches 0 positioned ~-1 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -3 if score $pos_z ca.overload_pos matches 0 positioned ~-1.5 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
execute if score $pos_x ca.overload_pos matches -4 if score $pos_z ca.overload_pos matches 0 positioned ~-2 ~0.2 ~ run function cartographer_mob_abilities:ability_traits/overloading/create_overload
