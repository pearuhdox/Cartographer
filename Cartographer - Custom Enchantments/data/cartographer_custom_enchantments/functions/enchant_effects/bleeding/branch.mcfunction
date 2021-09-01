execute if score $melee ca.bleeding matches 1.. as @s[nbt=!{HurtTime:0s}] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute if score $melee ca.bleeding matches 1.. if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.effect_bleed 1

execute if score $melee ca.bleeding matches 1.. unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 3

execute if score $melee ca.bleeding matches 1 run scoreboard players add @s ca.bleed_potency 1
execute if score $melee ca.bleeding matches 2 run scoreboard players add @s ca.bleed_potency 2
execute if score $melee ca.bleeding matches 3.. run scoreboard players add @s ca.bleed_potency 3