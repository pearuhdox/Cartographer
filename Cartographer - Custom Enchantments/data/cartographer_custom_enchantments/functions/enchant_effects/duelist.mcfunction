function #minecraft:cartographer/events/enchantments/melee/duelist

scoreboard players operation $melee ca.duelist = @s ca.duelist

execute if score @s ca.duelist matches 1.. as @e[type=#cartographer_custom_enchantments:duelist,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/branch