execute if score @s ca.atk_time matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -1 multiply
execute if score @s ca.atk_time matches 2.. run attribute @s minecraft:generic.attack_damage modifier add 31-522-15-3120-91514 "evo_effect_dmg" -1 multiply
execute if score @s ca.atk_time matches 1 run attribute @s minecraft:generic.attack_damage modifier remove 31-522-15-3120-91514
execute if score @s ca.atk_time matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute if score @s ca.atk_time matches 1 run scoreboard players set @s ca.evo_burn 13
