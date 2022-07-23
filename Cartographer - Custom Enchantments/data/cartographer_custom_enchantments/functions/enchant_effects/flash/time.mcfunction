playsound minecraft:entity.creeper.primed hostile @a[distance=..12] ~ ~ ~ 0.5 2
particle firework ~ ~1 ~ 0 0 0 0.2 1 normal

execute if score @s ca.flash_time matches 1 run function cartographer_custom_enchantments:enchant_effects/flash/do_flash

execute if score @s ca.flash_time matches 1 run scoreboard players set @s ca.flash_time 0
scoreboard players remove @s ca.flash_time 1