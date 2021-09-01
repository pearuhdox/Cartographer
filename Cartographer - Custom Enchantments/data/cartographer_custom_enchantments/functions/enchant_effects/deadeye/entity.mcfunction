execute run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2


execute run scoreboard players set @s cdl.Damage_Queue 10
execute run function cd:lib/mob/damage/normal

execute run tp @s ~ ~ ~ facing entity @p[tag=is_firing_deadeye] feet

execute run function cartographer_core:helper/push_half

execute if score $deadeye ca.flame matches 1 run data merge entity @s {Fire:85}
execute if score $deadeye ca.frost matches 1 run effect give @s slowness 5 1
execute if score $deadeye ca.expose matches 1 run effect give @s bad_omen 5 1
execute if score $deadeye ca.electrode matches 1 run scoreboard players set @s ca.effect_shock 5
execute if score $deadeye ca.infect matches 1 run scoreboard players set @s ca.effect_infect 5
execute if score $deadeye ca.bleed matches 1 unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 5
execute if score $deadeye ca.bleed matches 1 if entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 11

execute if score $deadeye ca.flash matches 1 run scoreboard players add @s ca.effect_stun 15

scoreboard players set $hit_check ca.deadeye 1