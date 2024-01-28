execute unless score @s ca.collapse matches 0.. run function cartographer_custom_enchantments:enchant_effects/collapse/setup_stand

scoreboard players remove @s ca.collapse 1

#Breaks so long as a player remains within 18 blocks
execute if entity @a[distance=..18] run function cartographer_custom_enchantments:enchant_effects/collapse/nearby_player
execute as @a[distance=..18] at @s run particle falling_dripstone_water ~ ~0.35 ~ 0.3 0.1 0.3 0 3 normal


execute if score @s ca.collapse matches 0 run particle poof ~ ~0.6 ~ 0 0 0 0.1 8 normal 
execute if score @s ca.collapse matches 0 run kill @s

scoreboard players operation $mod_20 ca.collapse = @s ca.collapse
scoreboard players operation $mod_20 ca.collapse %= $80 ca.CONSTANT

tp @s ~ ~ ~ ~15 ~

function cartographer_custom_enchantments:enchant_effects/collapse/circle_vfx

execute unless block ~ ~ ~ spawner run function cartographer_custom_enchantments:enchant_effects/collapse/break_spawner

execute if score @s ca.collapse matches 700.. run function cartographer_custom_enchantments:enchant_effects/collapse/break_spawner