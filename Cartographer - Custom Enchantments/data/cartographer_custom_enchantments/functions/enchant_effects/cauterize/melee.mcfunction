scoreboard players set $melee ca.cauterize 1
scoreboard players operation $cauterize ca.ench_var = @s ca.cauterize

execute if score @s ca.cauterize matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize


scoreboard players set $melee ca.cauterize 0