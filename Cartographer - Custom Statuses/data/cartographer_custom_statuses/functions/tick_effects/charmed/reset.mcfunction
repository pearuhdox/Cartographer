scoreboard players set @s ca.charm_time 0
scoreboard players set @s ca.effect_charmed 0
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 1.4
effect give @s blindness 1 0 true
execute on target unless entity @s[type=player] run effect give @s blindness 1 0 true
particle minecraft:effect ~ ~1 ~ 0.2 0.35 0.2 0.1 15 normal
particle minecraft:instant_effect ~ ~1 ~ 0.2 0.35 0.2 0.1 15 normal

scoreboard players set @s ca.charm_immune 600