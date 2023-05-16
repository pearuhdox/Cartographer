function #minecraft:cartographer/events/enchantments/melee/hex_eater

scoreboard players operation $lvl ca.hex_eater = @s ca.hex_eater

execute if score @s ca.hex_eater matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/hex_eater/branch