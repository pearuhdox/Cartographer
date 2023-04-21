execute if score @s ims.climb matches 1.. if block ~ ~ ~ scaffolding run function improved_scaffolding:climb/up
execute if score @s ims.sneak matches 1.. if block ~ ~ ~ scaffolding run function improved_scaffolding:climb/down

execute if score @s ims.break matches 1.. run scoreboard players set @s ims.magnet 100

execute if score @s ims.magnet matches 1.. run scoreboard players remove @s ims.magnet 1

execute if block ~ ~ ~ scaffolding if block ~ ~-0.1 ~ scaffolding unless block ~ ~-1.2 ~ air run effect give @s slow_falling 1 0 true

execute if score @s ims.jump_time matches 1.. run scoreboard players remove @s ims.jump_time 1

execute if score @s ims.climb matches 1.. run scoreboard players set @s ims.jump_time 3
execute if score @s ims.jump matches 1.. run scoreboard players set @s ims.jump_time 10

scoreboard players set @s ims.climb 0
scoreboard players set @s ims.sneak 0
scoreboard players set @s ims.break 0

scoreboard players set @s ims.jump 0
