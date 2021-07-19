execute run particle dust 0.627 1 0.627 0.5 ~ ~1.1 ~ 0.25 0.1 0.25 0 2 normal
execute run particle dust 0.627 1 0.627 0.5 ~ ~1.2 ~ 0.1 0.2 0.1 0 2 normal
execute if entity @a[scores={ca.use_lectern=1..},distance=..5] run clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
execute if score $lexica_stand ca.gamerule matches 0 as @a[scores={ca.use_lectern=1..},distance=..5] at @s if entity @s[scores={ca.lexica_sneak=0}] run function cartographer_core:lexica/manual
execute if score $lexica_stand ca.gamerule matches 1 as @a[scores={ca.use_lectern=1..},distance=..5] at @s if entity @s[scores={ca.lexica_sneak=0}] run tellraw @s {"text":"As your hand moves over the lectern, a mysterious book is placed into your inventory...","color":"#ACFFA6","italic":true}
execute if score $lexica_stand ca.gamerule matches 1 as @a[scores={ca.use_lectern=1..},distance=..5] at @s if entity @s[scores={ca.lexica_sneak=0}] run function cartographer_core:give_lexica
execute if block ~ ~ ~ air run kill @s