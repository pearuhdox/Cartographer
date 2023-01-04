function #minecraft:cartographer/events/enchantments/melee/infection

scoreboard players operation $melee ca.infection = @s ca.infection

execute if score @s ca.infection matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/infection/branch