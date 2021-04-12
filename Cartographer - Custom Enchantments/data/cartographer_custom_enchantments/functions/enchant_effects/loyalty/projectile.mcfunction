function cartographer_custom_enchantments:enchant_effects/loyalty/trajectory

scoreboard players operation @s helper_raycast = @s loyalty
scoreboard players operation @s helper_raycast *= @s ca.dummy

execute if entity @s[tag=is_seeking] run function cartographer_custom_enchantments:enchant_effects/loyalty/movement

execute if entity @s[tag=is_seeking] run scoreboard players add @s helper_lifetime 1

scoreboard players operation @s[tag=is_seeking] ca.dummy = @s helper_lifetime
scoreboard players operation @s[tag=is_seeking] ca.dummy /= $core.20 ca.CONSTANT
execute if score @s ca.dummy matches 0 run scoreboard players set @s ca.dummy 1

tag @s remove is_seeking