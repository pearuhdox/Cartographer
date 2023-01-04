function #minecraft:cartographer/events/enchantments/melee/transfiguration/attack

execute if entity @s[scores={ca.transfig=1..}] unless score @s ca.trans_cdl matches 1.. run function cartographer_core:helper/randomize

execute if entity @s[scores={ca.transfig=1..}] unless score @s ca.trans_cdl matches 1.. run scoreboard players operation @s ca.melee_chance -= @s ca.trans_bias
execute if entity @s[scores={ca.transfig=1..}] unless score @s ca.trans_cdl matches 1.. run scoreboard players set @s[scores={ca.melee_chance=..0}] ca.melee_chance 1

execute if entity @s[scores={ca.transfig=1..}] unless score @s ca.trans_cdl matches 1.. run scoreboard players operation $melee ca.melee_chance = @s random


scoreboard players operation $melee ca.transfig = @s ca.transfig

execute unless score @s ca.trans_cdl matches 1.. as @e[type=#bb:hostile,tag=!elite,tag=!boss,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/branch

#scoreboard players set $melee ca.transfig 0