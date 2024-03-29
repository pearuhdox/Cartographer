function #minecraft:cartographer/events/enchantments/tool/sapper

scoreboard players operation $sapper_time ca.enchant_var = @s ca.sapper
scoreboard players operation $sapper_time ca.enchant_var *= $20 ca.CONSTANT

scoreboard players operation @s ca.sapper_banking = $sapper_time ca.enchant_var

execute if entity @s[scores={ca.s_adren=1..,ca.adren_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2
execute if entity @s[scores={ca.s_energ=1..,ca.energ_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2
execute if entity @s[scores={ca.s_frenzy=1..,ca.frenz_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2
execute if entity @s[scores={ca.s_con=1..}] at @s run playsound minecraft:entity.illusioner.mirror_move player @s ~ ~ ~ 0.5 1.2

execute if entity @s[scores={ca.sapper=1..,ca.s_adren=1}] run scoreboard players set @s ca.adren_time 200
execute if entity @s[scores={ca.sapper=1..,ca.s_adren=2}] run scoreboard players set @s ca.adren_time 400
execute if entity @s[scores={ca.sapper=1..,ca.s_adren=3}] run scoreboard players set @s ca.adren_time 600
execute if entity @s[scores={ca.sapper=1..,ca.s_adren=4}] run scoreboard players set @s ca.adren_time 800
execute if entity @s[scores={ca.sapper=1..,ca.s_adren=5}] run scoreboard players set @s ca.adren_time 1000
execute if entity @s[scores={ca.sapper=1..,ca.s_adren=6..}] run scoreboard players set @s ca.adren_time 1200

execute if entity @s[scores={ca.sapper=1..,ca.s_energ=1}] run scoreboard players set @s ca.energ_time 200
execute if entity @s[scores={ca.sapper=1..,ca.s_energ=2}] run scoreboard players set @s ca.energ_time 400
execute if entity @s[scores={ca.sapper=1..,ca.s_energ=3}] run scoreboard players set @s ca.energ_time 600
execute if entity @s[scores={ca.sapper=1..,ca.s_energ=4}] run scoreboard players set @s ca.energ_time 800
execute if entity @s[scores={ca.sapper=1..,ca.s_energ=5}] run scoreboard players set @s ca.energ_time 1000
execute if entity @s[scores={ca.sapper=1..,ca.s_energ=6..}] run scoreboard players set @s ca.energ_time 1200

execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=1}] run scoreboard players set @s ca.frenz_time 200
execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=2}] run scoreboard players set @s ca.frenz_time 400
execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=3}] run scoreboard players set @s ca.frenz_time 600
execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=4}] run scoreboard players set @s ca.frenz_time 800
execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=5}] run scoreboard players set @s ca.frenz_time 1000
execute if entity @s[scores={ca.sapper=1..,ca.s_frenzy=6..}] run scoreboard players set @s ca.frenz_time 1200

execute if entity @s[scores={ca.sapper=1..,ca.s_con=1}] run scoreboard players set @s ca.conceal_time 41
execute if entity @s[scores={ca.sapper=1..,ca.s_con=2}] run scoreboard players set @s ca.conceal_time 61
execute if entity @s[scores={ca.sapper=1..,ca.s_con=3}] run scoreboard players set @s ca.conceal_time 81
execute if entity @s[scores={ca.sapper=1..,ca.s_con=4}] run scoreboard players set @s ca.conceal_time 101
execute if entity @s[scores={ca.sapper=1..,ca.s_con=5}] run scoreboard players set @s ca.conceal_time 121
execute if entity @s[scores={ca.sapper=1..,ca.s_con=6..}] run scoreboard players set @s ca.conceal_time 141

playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 5 normal 