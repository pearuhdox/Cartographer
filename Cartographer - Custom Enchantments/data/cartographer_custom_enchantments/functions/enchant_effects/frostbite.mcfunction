function #minecraft:cartographer/events/enchantments/melee/frostbite

scoreboard players operation $fb ca.frostbite = @s ca.frostbite

execute if score @s ca.frostbite matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/branch