scoreboard players set $brittled ca.cauterize 0
scoreboard players set $melee ca.cauterize 1

execute if score @s ca.cauterize matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize

execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..12] ~ ~ ~ 1 0.5


scoreboard players set $brittled ca.cauterize 0

scoreboard players set $melee ca.cauterize 0