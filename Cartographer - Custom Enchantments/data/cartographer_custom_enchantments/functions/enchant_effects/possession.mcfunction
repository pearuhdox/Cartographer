function #minecraft:cartographer/events/enchantments/melee/possession/attack

scoreboard players operation $poss ca.possession = @s ca.possession

scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math
scoreboard players operation $melee ca.possession = @s ca.possession
scoreboard players operation $percent_poss ca.melee_chance = $melee ca.possession
scoreboard players operation $percent_poss ca.melee_chance *= $10 ca.CONSTANT
scoreboard players operation $percent_poss ca.melee_chance += @s ca.possess_bias

scoreboard players set $pos_attempted ca.var 0
scoreboard players set $pos_success ca.var 0

execute unless score @s ca.possess_cdl matches 1.. as @e[type=#bb:hostile,tag=!ca.failed_possess,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/possession/branch

execute unless score $pos_success ca.var matches 1.. if score $pos_attempted ca.var matches 1.. run scoreboard players add @s ca.possess_bias 3
execute if score @s ca.possess_bias matches 31.. run scoreboard players set @s ca.possess_bias 30

execute if score $pos_success ca.var matches 1.. run scoreboard players set @s ca.possess_bias 0
execute if score $pos_success ca.var matches 1.. run scoreboard players set @s ca.possess_cdl 10
