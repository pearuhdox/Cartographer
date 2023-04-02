scoreboard players add @s ca.trap_timer 1

effect give @a[distance=..7.5] mining_fatigue 1 0

execute if score @s ca.trap_timer matches 100 run playsound minecraft:entity.elder_guardian.curse block @a ~ ~ ~ 0.1 1.25
execute if score @s ca.trap_timer matches 100 run particle minecraft:squid_ink ~ ~0.35 ~ 0.1 0.1 0.1 0.1 20 force

execute if score @s ca.trap_timer matches 101.. run scoreboard players set @s ca.trap_timer 1