execute if score $melee ca.bleeding matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

#Set time at 3 or add 1 second instead
execute if score $melee ca.bleeding matches 1.. if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.effect_bleed 1

execute if score $melee ca.bleeding matches 1.. unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 3

#Add Bleed Potency, add only 1 if the target is already bleeding.
execute if score @s ca.bleed_potency matches 1.. if score $melee ca.bleeding matches 1.. run scoreboard players add @s ca.bleed_potency 1

execute unless score @s ca.bleed_potency matches 1.. if score $melee ca.bleeding matches 1 run scoreboard players add @s ca.bleed_potency 1
execute unless score @s ca.bleed_potency matches 1.. if score $melee ca.bleeding matches 2 run scoreboard players add @s ca.bleed_potency 2
execute unless score @s ca.bleed_potency matches 1.. if score $melee ca.bleeding matches 3.. run scoreboard players add @s ca.bleed_potency 3

function #minecraft:cartographer/events/enchants_mob_hit/melee/bleeding
