#Reset death test tag
tag @s remove true_death

#writing damage to main scoreboard
scoreboard players operation damage= damage_queue = @s damage_queue
scoreboard players reset @s damage_queue

#saving health boost effect (might remove)
execute if predicate cartographer_core:has_health_boost at @s run function cartographer_core:helper/hurt_player/true_damage/save_health_boost

#Calculate the user's total EPF for the attack type. This is where we revoke the "damage type" advancement.
execute unless entity @s[tag=true] run function cartographer_core:helper/hurt_player/true_damage/calculate_epf


#check if the player has resistance - If the player has the "true" flag, we skip this.
execute unless entity @s[tag=true] run function cartographer_core:helper/hurt_player/true_damage/save_resistance

#applying resistance
execute unless entity @s[tag=true] if score damage= damage_queue matches 1.. if score @s ca.res.dur matches 1.. unless score $check_too_low ca.res.dur matches 1 run function cartographer_core:helper/hurt_player/true_damage/resistance
execute unless entity @s[tag=true] run scoreboard players operation damage= damage_queue /= 10 ca.CONSTANT

execute unless entity @s[tag=true] run scoreboard players set $check_too_low ca.res.dur 0

#doing absorption damage
execute if score damage= damage_queue matches 1.. if predicate cartographer_core:has_absorption run function cartographer_core:helper/hurt_player/true_damage/absorption


#doing health damage
execute if score damage= damage_queue matches 1.. run function cartographer_core:helper/hurt_player/true_damage/health

tag @s remove true

#play a damage sound to indicate doing damage
#playsound minecraft:entity.generic.hurt player @a[distance=..10] ~ ~ ~