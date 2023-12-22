scoreboard players operation $tempo_theft ca.var = @s ca.tempo_theft

scoreboard players set $melee ca.tempo_theft 1

execute if score @s ca.tempo_theft matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob
