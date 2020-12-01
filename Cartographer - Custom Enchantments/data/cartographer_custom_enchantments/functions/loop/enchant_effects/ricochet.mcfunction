execute as @s at @s run execute if entity @a[scores={ricochet=1}] run scoreboard players set @s ricochet 1
execute as @s at @s run execute if entity @a[scores={ricochet=2}] run scoreboard players set @s ricochet 2
execute as @s at @s run execute if entity @a[scores={ricochet=3}] run scoreboard players set @s ricochet 3

execute as @s at @s run execute if entity @a[scores={ricochet=1..}] run scoreboard players set @s helper_lifetime 1