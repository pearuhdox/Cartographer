#Run Sturdy Disable
execute as @s[scores={mob_sturdy=2..}] run attribute @s minecraft:generic.knockback_resistance modifier add 00000031-1315-1819-2017-000000000000 "mob_sturdy" 100 add
execute as @s[scores={mob_sturdy=1}] run attribute @s minecraft:generic.knockback_resistance modifier remove 00000031-1315-1819-2017-000000000000

scoreboard players remove @s[scores={mob_sturdy=1..}] mob_sturdy 1