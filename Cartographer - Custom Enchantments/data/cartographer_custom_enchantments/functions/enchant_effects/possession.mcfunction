function #minecraft:cartographer/events/enchantments/melee/possession

scoreboard players operation $poss ca.possession = @s ca.possession

scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math
scoreboard players operation $melee ca.possession = @s ca.possession
scoreboard players operation $percent_poss ca.melee_chance = $melee ca.possession
scoreboard players operation $percent_poss ca.melee_chance *= $10 ca.CONSTANT

execute as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/possession/branch