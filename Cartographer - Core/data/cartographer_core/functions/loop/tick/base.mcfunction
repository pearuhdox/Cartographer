execute as @a at @s run tp @e[distance=..2,type=area_effect_cloud,tag=helper_cloud] @s

execute as @a[nbt=!{HurtTime:0s}] at @s run function cartographer_core:helper/hurt_player/disguise

execute as @a[scores={custom_death=1..},tag=damaging] at @s run function cartographer_mob_abilities:helper/custom_death_msg
execute as @a[scores={custom_death=1..},tag=damaging] at @s run function cartographer_custom_enchantments:helper/custom_death_msg
execute as @a[scores={custom_death=1..},tag=damaging] at @s run execute if score $cart_death_msg global_options matches 1 run gamerule showDeathMessages true
scoreboard players set @a[scores={custom_death=1..}] custom_death 0

schedule function cartographer_core:loop/tick/base 1t