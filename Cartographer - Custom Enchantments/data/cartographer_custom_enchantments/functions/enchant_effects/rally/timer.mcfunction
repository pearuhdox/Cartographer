scoreboard players remove @s ca.ral_time 1

#Reset attack speed and kbr on Echo users
execute as @a[scores={ca.ral_time=1..}] run attribute @s minecraft:generic.attack_damage modifier add 31-181-1212-26-12011 "rally_effect_atk" 0.25 multiply
execute as @a[scores={ca.ral_time=0}] run attribute @s minecraft:generic.attack_damage modifier remove 31-181-1212-26-12011

execute as @a[scores={ca.ral_time=1..}] run attribute @s minecraft:generic.attack_speed modifier add 31-181-1212-26-119164 "rally_effect_aspd" 0.25 multiply
execute as @a[scores={ca.ral_time=0}] run attribute @s minecraft:generic.attack_speed modifier remove 31-181-1212-26-119164

execute if score @s ca.ral_time matches 0 run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ .15 1.2

particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.4 0.1 0.4 0 5 normal

execute if score @s ca.ral_time matches 0 run scoreboard players set @s ca.ral_bank 0