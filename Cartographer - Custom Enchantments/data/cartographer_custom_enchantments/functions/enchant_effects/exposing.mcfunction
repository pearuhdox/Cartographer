function #minecraft:cartographer/events/enchantments/melee/exposing

scoreboard players operation $melee ca.exposing = @s ca.exposing

execute if score @s ca.exposing matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/exposing/branch