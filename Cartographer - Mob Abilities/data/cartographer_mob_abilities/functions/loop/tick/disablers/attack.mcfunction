#Run Melee Damage Disable
execute as @s[scores={mob_atk_dis=2..}] run attribute @s minecraft:generic.attack_damage modifier add 00000031-4919-120-11-000000000000 "mob_disable_atk" -1 multiply

execute as @s[scores={mob_atk_dis=1}] run attribute @s minecraft:generic.attack_damage modifier remove 00000031-4919-120-11-000000000000

scoreboard players remove @s[scores={mob_atk_dis=1..}] mob_atk_dis 1