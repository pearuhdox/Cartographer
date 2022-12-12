particle minecraft:crit ~ ~ ~ 0.85 0.75 0.85 0.05 25 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation $mod_charge_raycast ca.var = @s ca.raycast
scoreboard players operation $mod_charge_raycast ca.var %= $2 ca.CONSTANT

execute if score $mod_charge_raycast ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ^ ^ ^0.5 #bb:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:animations/charge/raycast