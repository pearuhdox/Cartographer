execute run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1


execute run scoreboard players set @s cdl.Damage_Queue 6
execute run function cd:lib/mob/damage/normal

execute run tp @s ~ ~ ~ facing entity @p[scores={ca.deadeye=1..}] feet

execute run function cartographer_core:helper/push_half

execute if score $deadeye ca.flame matches 1 run data merge entity @s {Fire:65}
execute if score $deadeye ca.frost matches 1 run effect give @s slowness 3 1
execute if score $deadeye ca.pin_down matches 1 run effect give @s bad_omen 3 1
execute if score $deadeye ca.conductive matches 1 run scoreboard players set @s ca.effect_shock 3
execute if score $deadeye ca.putrefy matches 1 run scoreboard players set @s ca.effect_infect 3
execute if score $deadeye ca.rend matches 1 unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 3
execute if score $deadeye ca.rend matches 1 if entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 11

execute if score $deadeye ca.flash matches 1 run scoreboard players add @s ca.effect_stun 12

scoreboard players set $hit_check ca.deadeye 1