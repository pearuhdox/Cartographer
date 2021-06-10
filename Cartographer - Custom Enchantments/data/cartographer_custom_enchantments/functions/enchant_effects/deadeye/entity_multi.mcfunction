execute run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1
execute run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1


execute run scoreboard players set @s damage_queue 6
execute run function cartographer_core:helper/deal_damage/by_score
execute run function cartographer_core:helper/deal_damage/invulnerable_tick

execute run tp @s ~ ~ ~ facing entity @p[scores={deadeye=1..}] feet

execute run function cartographer_core:helper/push_half

execute if score $deadeye flame matches 1 run data merge entity @s {Fire:65}
execute if score $deadeye frost matches 1 run effect give @s slowness 3 1
execute if score $deadeye pin_down matches 1 run effect give @s bad_omen 3 1
execute if score $deadeye conductive matches 1 run scoreboard players set @s effect_shocked 3
execute if score $deadeye putrefy matches 1 run scoreboard players set @s effect_infect 3
execute if score $deadeye rend matches 1 unless entity @s[scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 3
execute if score $deadeye rend matches 1 if entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11

execute if score $deadeye flash matches 1 run scoreboard players add @s effect_stunned 12

scoreboard players set $hit_check deadeye 1