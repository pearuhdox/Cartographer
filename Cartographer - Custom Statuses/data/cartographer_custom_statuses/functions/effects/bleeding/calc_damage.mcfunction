execute if score @s ca.bleed_potency matches 6.. run scoreboard players set @s ca.bleed_potency 5

scoreboard players operation $bleed_percent ca.effect_bleed = @s ca.bleed_potency


#Setup mins and maxes
scoreboard players operation $bleed_min ca.effect_bleed = @s ca.bleed_potency
scoreboard players operation $bleed_max ca.effect_bleed = @s ca.bleed_potency

#Max is always set to 3 times the damage of the max stack.
scoreboard players operation $bleed_max ca.effect_bleed *= $3 ca.CONSTANT

#Bleed Multiplication Percentage
execute unless entity @s[tag=elite] unless entity @s[tag=boss] run scoreboard players operation $bleed_percent ca.effect_bleed *= $4 ca.CONSTANT
execute if entity @s[tag=elite,tag=!boss] run scoreboard players operation $bleed_percent ca.effect_bleed *= $2 ca.CONSTANT

#Get Health Value
execute as @s store result score $damage_amt ca.effect_bleed run attribute @s minecraft:generic.max_health get

#Multiply by constant and divide to get damage amount
scoreboard players operation $damage_amt ca.effect_bleed *= $bleed_percent ca.effect_bleed
scoreboard players operation $damage_amt ca.effect_bleed /= $100 ca.CONSTANT

execute if score $damage_amt ca.effect_bleed < $bleed_min ca.effect_bleed run scoreboard players operation $damage_amt ca.effect_bleed = $bleed_min ca.effect_bleed
execute if score $damage_amt ca.effect_bleed > $bleed_max ca.effect_bleed run scoreboard players operation $damage_amt ca.effect_bleed = $bleed_max ca.effect_bleed

scoreboard players operation @s ca.damage_queue = $damage_amt ca.effect_bleed