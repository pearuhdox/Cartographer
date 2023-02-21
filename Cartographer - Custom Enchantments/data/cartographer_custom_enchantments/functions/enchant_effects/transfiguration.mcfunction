function #minecraft:cartographer/events/enchantments/melee/transfiguration/attack

scoreboard players set $transfig_success ca.transfig 0
scoreboard players set $melee ca.transfig 0

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $melee_chance ca.melee_chance = $value bbl.rng
scoreboard players operation $melee_chance ca.melee_chance -= @s ca.trans_bias

scoreboard players operation $melee ca.transfig = @s ca.transfig

#Bias does not exceed 50% - 3% Bias is added each attempt - Bias cannot be added on cooldown
execute unless score @s ca.trans_cdl matches 1.. run scoreboard players add @s ca.trans_bias 3
execute if score @s ca.trans_bias matches 51.. run scoreboard players set @s ca.trans_bias 50

#Do the check, Mobs that have already been transfigured cannot be transfigured again.
execute unless score @s ca.trans_cdl matches 1.. as @e[type=#bb:hostile,tag=!ca.elite,tag=!ca.boss,tag=!ca.checked_transfig,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/branch

#If Successful, set cooldown to 10 seconds, reset bias
execute if score $transfig_success ca.transfig matches 1.. run scoreboard players set @s ca.trans_bias 0
execute if score $transfig_success ca.transfig matches 1.. run scoreboard players set @s ca.trans_cdl 10