playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if entity @s[scores={effect_bleed=11..19}] run function cartographer_core:helper/deal_damage/1
execute if entity @s[scores={effect_bleed=21..29}] run function cartographer_core:helper/deal_damage/2
execute if entity @s[scores={effect_bleed=31..39}] run function cartographer_core:helper/deal_damage/3
execute if entity @s[scores={effect_bleed=41..}] run function cartographer_core:helper/deal_damage/4

effect give @s minecraft:wither 1 1 true

scoreboard players remove @s effect_bleed 1

scoreboard players set @s[scores={effect_bleed=10}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=20}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=30}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=40}] effect_bleed 0