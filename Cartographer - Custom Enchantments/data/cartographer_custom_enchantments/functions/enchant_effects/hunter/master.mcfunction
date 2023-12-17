function #minecraft:cartographer/events/enchantments/melee/hunter

scoreboard players operation $melee ca.hunter = @s ca.hunter

execute if score @s ca.hunter matches 1.. as @e[type=#cartographer_custom_enchantments:hunter,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/branch