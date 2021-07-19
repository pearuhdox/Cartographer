playsound minecraft:entity.creeper.primed hostile @a[distance=..12] ~ ~ ~ 0.5 2
particle firework ~ ~1 ~ 0 0 0 0.2 1 normal

execute if score @s ca.flash_time matches 1 run scoreboard players set @s ca.effect_stun 21
execute if score @s ca.flash_time matches 1 run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if score @s ca.flash_time matches 1 run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..24] ~ ~ ~ 5 2

scoreboard players set @s[scores={ca.flash_time=1}] ca.flash_time 0
scoreboard players remove @s ca.flash_time 1