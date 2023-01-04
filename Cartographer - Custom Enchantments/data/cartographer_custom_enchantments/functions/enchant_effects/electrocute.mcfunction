function #minecraft:cartographer/events/enchantments/melee/electrocute

scoreboard players operation $melee ca.electrocute = @s ca.electrocute

execute if entity @s[scores={ca.electrocute=1..}] as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/electrocute/branch

scoreboard players set $melee ca.electrocute 0