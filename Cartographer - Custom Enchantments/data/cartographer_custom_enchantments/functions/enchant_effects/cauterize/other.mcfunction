scoreboard players set $brittled ca.cauterize 0
scoreboard players set $other ca.cauterize 1

function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize

execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..12] ~ ~ ~ 1 0.5


#Resets
scoreboard players set $brittled ca.cauterize 0
scoreboard players set $other ca.cauterize 0

tag @s[type=#bb:hostile,tag=is_cauterize] remove is_cauterize