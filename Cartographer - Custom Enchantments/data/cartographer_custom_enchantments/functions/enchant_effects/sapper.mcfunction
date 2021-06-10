execute if entity @s[scores={sapper=1}] run scoreboard players set @s heal_queue 1
execute if entity @s[scores={sapper=2}] run scoreboard players set @s heal_queue 2
execute if entity @s[scores={sapper=3}] run scoreboard players set @s heal_queue 3
execute if entity @s[scores={sapper=4}] run scoreboard players set @s heal_queue 4
execute if entity @s[scores={sapper=5..}] run scoreboard players set @s heal_queue 5

execute if entity @s[scores={sapper=6}] run effect give @s regeneration 2 1
execute if entity @s[scores={sapper=7}] run effect give @s regeneration 3 1
execute if entity @s[scores={sapper=8}] run effect give @s regeneration 4 1
execute if entity @s[scores={sapper=9}] run effect give @s regeneration 5 1
execute if entity @s[scores={sapper=10}] run effect give @s regeneration 7 1

execute if entity @s[scores={sapper=1..}] run function cartographer_core:helper/heal_player/by_score

execute if entity @s[scores={s_adrenaline=1..,ca.adren_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2
execute if entity @s[scores={s_energetic=1..,ca.energ_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2
execute if entity @s[scores={s_frenzy=1..,ca.frenz_time=0}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

execute if entity @s[scores={sapper=1..,s_adrenaline=1}] run scoreboard players set @s ca.adren_time 200
execute if entity @s[scores={sapper=1..,s_adrenaline=2}] run scoreboard players set @s ca.adren_time 400
execute if entity @s[scores={sapper=1..,s_adrenaline=3}] run scoreboard players set @s ca.adren_time 600
execute if entity @s[scores={sapper=1..,s_adrenaline=4}] run scoreboard players set @s ca.adren_time 800
execute if entity @s[scores={sapper=1..,s_adrenaline=5}] run scoreboard players set @s ca.adren_time 1000
execute if entity @s[scores={sapper=1..,s_adrenaline=6..}] run scoreboard players set @s ca.adren_time 1200

execute if entity @s[scores={sapper=1..,s_energetic=1}] run scoreboard players set @s ca.energ_time 200
execute if entity @s[scores={sapper=1..,s_energetic=2}] run scoreboard players set @s ca.energ_time 400
execute if entity @s[scores={sapper=1..,s_energetic=3}] run scoreboard players set @s ca.energ_time 600
execute if entity @s[scores={sapper=1..,s_energetic=4}] run scoreboard players set @s ca.energ_time 800
execute if entity @s[scores={sapper=1..,s_energetic=5}] run scoreboard players set @s ca.energ_time 1000
execute if entity @s[scores={sapper=1..,s_energetic=6..}] run scoreboard players set @s ca.energ_time 1200

execute if entity @s[scores={sapper=1..,s_frenzy=1}] run scoreboard players set @s ca.frenz_time 200
execute if entity @s[scores={sapper=1..,s_frenzy=2}] run scoreboard players set @s ca.frenz_time 400
execute if entity @s[scores={sapper=1..,s_frenzy=3}] run scoreboard players set @s ca.frenz_time 600
execute if entity @s[scores={sapper=1..,s_frenzy=4}] run scoreboard players set @s ca.frenz_time 800
execute if entity @s[scores={sapper=1..,s_frenzy=5}] run scoreboard players set @s ca.frenz_time 1000
execute if entity @s[scores={sapper=1..,s_frenzy=6..}] run scoreboard players set @s ca.frenz_time 1200


execute run playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 5 normal 