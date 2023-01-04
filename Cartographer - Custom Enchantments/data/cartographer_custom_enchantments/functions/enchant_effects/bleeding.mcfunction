function #minecraft:cartographer/events/enchantments/melee/bleeding

scoreboard players operation $melee ca.bleeding = @s ca.bleeding

execute if score @s ca.bleeding matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/bleeding/branch

scoreboard players set $melee ca.bleeding 0