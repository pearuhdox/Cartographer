scoreboard players operation $first_strike ca.var = @s ca.first_strike

execute if score @s ca.first_strike matches 1.. as @e[type=#bb:hostile,tag=!ca.first_striked,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/first_strike/branch