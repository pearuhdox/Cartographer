execute if score $melee vicious matches 1.. as @s[nbt=!{HurtTime:0s}] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute if score $melee vicious matches 1.. if score @s effect_bleed matches 1.. run scoreboard players add @s effect_bleed 11

execute if score $melee vicious matches 1 unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 3
execute if score $melee vicious matches 2 unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5
execute if score $melee vicious matches 3.. unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 7