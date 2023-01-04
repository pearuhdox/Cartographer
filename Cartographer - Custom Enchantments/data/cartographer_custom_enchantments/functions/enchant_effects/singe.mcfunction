function #minecraft:cartographer/events/enchantments/melee/singe

scoreboard players operation $melee ca.singe = @s ca.singe

execute if score @s ca.singe matches 1.. as @e[type=#bb:fiery,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/singe/branch
execute if score @s ca.singe matches 1.. as @e[type=!#bb:fiery,distance=..5,nbt=!{HurtTime:0s},nbt=!{Fire:-1s}] at @s run function cartographer_custom_enchantments:enchant_effects/singe/branch