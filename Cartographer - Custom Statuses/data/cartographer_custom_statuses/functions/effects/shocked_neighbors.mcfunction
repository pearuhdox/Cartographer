execute unless entity @s[tag=shocked_tick] run scoreboard players set @s cdl.damage_queue 1
execute unless entity @s[tag=shocked_tick] run function cd:lib/mob/damage/normal
execute unless entity @s[tag=shocked_tick] run tag @s add shocked_tick
