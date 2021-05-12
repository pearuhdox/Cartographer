#Run Melee Damage Disable
execute as @s[scores={mob_atk_red=2..}] run attribute @s minecraft:generic.attack_damage modifier add 00000031-1845-120-11-000000000000 "mob_reduce_atk" -0.5 multiply

execute as @s[scores={mob_atk_red=1}] run attribute @s minecraft:generic.attack_damage modifier remove 00000031-1845-120-11-000000000000

scoreboard players remove @s[scores={mob_atk_red=1..}] mob_atk_red 1