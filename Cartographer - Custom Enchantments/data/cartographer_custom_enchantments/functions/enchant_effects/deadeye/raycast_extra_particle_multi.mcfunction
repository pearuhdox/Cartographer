execute if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal

execute if entity @s[scores={ca.raycast=1..6},tag=!encumbered,tag=!trueshotted] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={ca.raycast=1..10},tag=trueshotted] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={ca.raycast=1..3},tag=encumbered] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal