function #minecraft:cartographer/events/enchantments/melee/executioner

scoreboard players operation $exec ca.executioner = @s ca.executioner

execute as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch