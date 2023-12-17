execute facing entity @p[scores={ca.current_time=1..}] feet run tp @s ^ ^0.1 ^1

effect give @s blindness 1 0
effect give @s slow_falling 1 0
effect give @s weakness 1 9

playsound minecraft:entity.fishing_bobber.splash player @a[distance=..10] ~ ~ ~ 0.1 1.25

scoreboard players remove @s ca.current_time 1

execute if entity @a[distance=..4.5,scores={ca.current_time=1..}] run scoreboard players set @s ca.current_time 0